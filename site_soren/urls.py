from django.urls import path, include
from .views import (index_view, not_found, contact_us, about_us, blogs, blog_detail, faq, gallery_image, gallery_video,
                    product_detail, product_group, products, sample_request, header_view, footer_view,
                    recordcontactus_view, record_sample, blog_comment, search_result, terms_conditions, complaints_form,
                    record_complaints_form, copy_table_data)
from .sitemaps import ArticleSitemap, ProductSitemap, StaticSitemap, ProductGroupSitemap, VideoGallerySitemap, \
    ImageGallerySitemap
from django.contrib.sitemaps.views import sitemap

sitemaps = {
    'blog': ArticleSitemap,
    'product': ProductSitemap,
    'product_group': ProductGroupSitemap,
    'image': ImageGallerySitemap,
    'video': VideoGallerySitemap,
    'static': StaticSitemap
}

urlpatterns = [
    path('', index_view, name="index_view"),
    path('not-found/', not_found, name="not_found"),
    path('contact-us/', contact_us, name="contact_us"),
    path('about-us/', about_us, name="about_us"),
    path('blogs/<id>', blogs, name="blogs"),
    path('blog-detail/<id>/<url>', blog_detail, name="blog-detail"),
    path('faq/', faq, name="blogs_view"),
    path('gallery-image/<id>', gallery_image, name="gallery-image"),
    path('gallery-video/<id>', gallery_video, name="gallery-video"),
    path('product-detail/<id>/<url>', product_detail, name="product-detail"),
    path('product-group/', product_group, name="product-group"),
    path('products/<id>/<page>/<url>', products, name="products"),
    path('sample-request/', sample_request, name="add_record"),
    path('header_view/', header_view, name="header_view"),
    path('footer_view/', footer_view, name="footer_view"),
    path('recordcantactus/', recordcontactus_view, name="recordcontactus_view"),
    path('recordsample/', record_sample, name="record_sample"),
    path('blog-comment/<id>', blog_comment, name="blog-comment"),
    path('search-result/<page>', search_result, name="search-result"),
    path('terms-conditions/', terms_conditions, name="terms-conditions"),
    path('complaints-form/', complaints_form, name="complaints-form"),
    path('record-complaints-form/', record_complaints_form, name="record-complaints-form"),
    path(r'^tinymce/', include('tinymce.urls')),
    path('sitemap.xml/', sitemap, {'sitemaps': sitemaps}, name='django.contrib.sitemaps.views.sitemap'),
    path('copy_table_data/', copy_table_data, name='copy_table_data')
]
