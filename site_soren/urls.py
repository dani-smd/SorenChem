from django.urls import path, include
from .views import (index_view, not_found, contact_us, about_us, blogs, blog_detail, faq, gallery_image, gallery_video,
                    product_detail, product_group, products, sample_request, header_view, footer_view,
                    recordcontactus_view, record_sample, blog_comment)
from .sitemaps import ArticleSitemap
from django.contrib.sitemaps.views import sitemap

sitemaps = {
    'blog': ArticleSitemap
}

urlpatterns = [
    path('', index_view, name="index_view"),
    path('not-found/', not_found, name="not_found"),
    path('contact-us/', contact_us, name="contact_us"),
    path('about-us/', about_us, name="about_us"),
    path('blogs/<id>', blogs, name="blogs"),
    path('blog-detail/<id>', blog_detail, name="blog-detail"),
    path('faq/', faq, name="blogs_view"),
    path('gallery-image/<id>', gallery_image, name="gallery-image"),
    path('gallery-video/<id>', gallery_video, name="gallery-video"),
    path('product-detail/<id>', product_detail, name="product-detail"),
    path('product-group/', product_group, name="product-group"),
    path('products/<id>/<page>', products, name="products"),
    path('sample-request/', sample_request, name="add_record"),
    path('header_view/', header_view, name="header_view"),
    path('footer_view/', footer_view, name="footer_view"),
    path('recordcantactus/', recordcontactus_view, name="recordcontactus_view"),
    path('recordsample/', record_sample, name="record_sample"),
    path('blog-comment/<id>', blog_comment, name="blog-comment"),
    path(r'^tinymce/', include('tinymce.urls')),
    path('sitemap.xml/', sitemap, {'sitemaps': sitemaps}, name='django.contrib.sitemaps.views.sitemap'),
]
