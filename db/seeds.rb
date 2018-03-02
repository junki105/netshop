[
    {
        en: 'Mens',
        ja: '男性',
        children: [
            { en: 'outer', ja: 'アウター'},  
            { en: 'tops', ja: 'トップス'},
            { en: 'accessory', ja: 'アクセサリー'},
            { en: 'pants', ja: 'パンツ'},
            { en: 'watch', ja: '時計'},
            { en: 'shoes', ja: '靴'},
            { en: 'bag', ja: 'バッグ'},
            { en: 'others', ja: 'その他'}
        ]
    },
    {
        en: 'Womens',
        ja: '女性',
        children: [
            { en: 'Outer', ja: 'アウター'},
            { en: 'Tops', ja: 'トップス'},
            { en: 'Accessory', ja: 'アクセサリー'},
            { en: 'Pants', ja: 'パンツ'},
            { en: 'Watch', ja: '時計'},
            { en: 'Shoes', ja: '靴'},
            { en: 'Bag', ja: 'バッグ'},
            { en: 'Others', ja: 'その他'}
        ]
    },
    { en: 'Children', ja: '子供' },
    { en: 'Babies', ja: '赤ちゃん' }
].each do |d|
    I18n.locale = :en
    data = Category.create(name: d[:en])

    I18n.locale = :ja
    data.name = d[:ja]
    data.save!

    if d[:children]
        d[:children].each do |c|
            I18n.locale = :en
            child = Category.create(name: c[:en])

            I18n.locale = :ja
            child.name = c[:ja]
            child.save!
                
            data.children <<  child
        end
        data.save!
    end
end
