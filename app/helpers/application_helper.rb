module ApplicationHelper

    def default_meta_tags
        sitename = I18n.t('site.sitename')
        title = I18n.t('site.meta_tag.title', { sitename: sitename })
        description = I18n.t('site.meta_tag.description', { sitename: sitename })
        {
            site: title,
            title: '',
            description: description,
            charset: 'utf-8',
            keywords: [],
            reverse: true,
        }
    end

end
