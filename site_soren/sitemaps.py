from django.contrib.sitemaps import Sitemap
from .models import Blog


class ArticleSitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.8
    protocol = 'http'

    def items(self):
        return Blog.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/blog-detail/%s' % (obj.id)
