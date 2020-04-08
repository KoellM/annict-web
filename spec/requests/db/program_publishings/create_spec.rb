# frozen_string_literal: true

describe "POST /db/programs/:id/publishing", type: :request do
  context "user does not sign in" do
    let!(:program) { create(:program, :unpublished) }

    it "user can not access this page" do
      post "/db/programs/#{program.id}/publishing"
      program.reload

      expect(response.status).to eq(302)
      expect(flash[:alert]).to eq("ログインしてください")

      expect(program.published?).to eq(false)
    end
  end

  context "user who is not editor signs in" do
    let!(:user) { create(:registered_user) }
    let!(:program) { create(:program, :unpublished) }

    before do
      login_as(user, scope: :user)
    end

    it "user can not access" do
      post "/db/programs/#{program.id}/publishing"
      program.reload

      expect(response.status).to eq(302)
      expect(flash[:alert]).to eq("アクセスできません")

      expect(program.published?).to eq(false)
    end
  end

  context "user who is editor signs in" do
    let!(:user) { create(:registered_user, :with_editor_role) }
    let!(:program) { create(:program, :unpublished) }

    before do
      login_as(user, scope: :user)
    end

    it "user can publish program" do
      expect(program.published?).to eq(false)

      post "/db/programs/#{program.id}/publishing"
      program.reload

      expect(response.status).to eq(302)
      expect(flash[:notice]).to eq("公開しました")

      expect(program.published?).to eq(true)
    end
  end
end
