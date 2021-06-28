# frozen_string_literal: true

describe "GET /db/works/:work_id/staffs/new", type: :request do
  context "user does not sign in" do
    let!(:work) { create(:anime) }

    it "user can not access this page" do
      get "/db/works/#{work.id}/staffs/new"

      expect(response.status).to eq(302)
      expect(flash[:alert]).to eq("ログインしてください")
    end
  end

  context "user who is not editor signs in" do
    let!(:work) { create(:anime) }
    let!(:user) { create(:registered_user) }

    before do
      login_as(user, scope: :user)
    end

    it "can not access" do
      get "/db/works/#{work.id}/staffs/new"

      expect(response.status).to eq(302)
      expect(flash[:alert]).to eq("アクセスできません")
    end
  end

  context "user who is editor signs in" do
    let!(:work) { create(:anime) }
    let!(:user) { create(:registered_user, :with_editor_role) }

    before do
      login_as(user, scope: :user)
    end

    it "responses page" do
      get "/db/works/#{work.id}/staffs/new"

      expect(response.status).to eq(200)
      expect(response.body).to include("スタッフ登録")
    end
  end
end
