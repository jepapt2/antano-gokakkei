module ApplicationHelper
  def default_meta_tags
    {
      site: 'あんたの五角形',
      title: '',
      separator: '-',
      description: 'あなたの好きなものを五角形グラフで表現しよう！登録不要！',
      keywords: 'twitter,グラフ,五角形,あんたの五角形,投稿,強さ',
      reverse: true,
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
      ],
      og: {
        site_name: 'あんたの五角形',
        title: '',
        description: 'あなたの好きなものを五角形グラフで表現しよう！登録不要！', 
        type: 'website',
        url: request.original_url,
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary'
      }
    }
  end
end
