[
    { en: 'Mens', ja: '男性' },
    { en: 'Womens', ja: '女性' },
    { en: 'Children', ja: '子供' },
    { en: 'Babies', ja: '赤ちゃん' }
].each do |d|
    I18n.locale = :en
    data = Category.create(name: d[:en])

    I18n.locale = :ja
    data.name = d[:ja]
    data.save!
end
