from django.contrib.sitemaps import Sitemap
from .models import Blog, ProductDetail, ImageGallery, VideoGallery, ProductGroup
from django.urls import reverse


class ArticleSitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.8
    protocol = 'https'

    def items(self):
        return Blog.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/blog-detail/%s/%s' % (obj.id, obj.url)


class ProductSitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.9
    protocol = 'https'

    def items(self):
        return ProductDetail.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/product-detail/%s/%s' % (obj.id, obj.url)


class ImageGallerySitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.9
    protocol = 'https'

    def items(self):
        return ImageGallery.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/gallery-image/%s' % obj.id


class VideoGallerySitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.9
    protocol = 'https'

    def items(self):
        return VideoGallery.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/gallery-video/%s' % obj.id


class ProductGroupSitemap(Sitemap):
    changefreq = "weekly"
    priority = 0.9
    protocol = 'https'

    def items(self):
        return ProductGroup.objects.all()

    def lastmod(self, obj):
        return obj.created

    def location(self, obj):
        return '/products/%s/%s/%s' % (obj.id, 1, obj.url)


class StaticSitemap(Sitemap):
    changefreq = "yearly"
    priority = 0.8
    protocol = 'https'

    def items(self):
        return ['index_view', 'contact_us', 'not_found', 'about_us', 'product-group', 'add_record']

    def location(self, item):
        return reverse(item)
