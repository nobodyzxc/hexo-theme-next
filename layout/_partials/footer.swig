<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.footer.icon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #} </span>
  {% endif %}
</div>

{% if theme.footer.powered %}
  <div class="powered-by">{#
  #}{{ __('footer.powered', '<a class="theme-link" target="_blank" href="https://hexo.io">Hexo</a>') }}{#
#}</div>
{% endif %}

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

{% if theme.footer.theme.enable %}
  <div class="theme-info">{#
  #}{{ __('footer.theme') }} &mdash; {#
  #}<a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">{#
    #}NexT.{{ theme.scheme }}{#
  #}</a>{% if theme.footer.theme.version %} v{{ theme.version }}{% endif %}{#
#}</div>
{% endif %}

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}

{% if theme.ukagaka %}
    <script type="text/javascript" src='https://code.jquery.com/jquery-1.10.2.js'></script>
    <script type="text/javascript" src='/files/typed.js'></script>
    <script defer type="text/javascript">
      function load_script(url){
        var ukagaka_script = document.createElement('script');
        ukagaka_script.setAttribute('src', url);
        document.head.appendChild(ukagaka_script);
      }
      function load_style(url){
        var ukagaka_css = document.createElement('link');
        ukagaka_css.setAttribute('rel', 'stylesheet');
        ukagaka_css.setAttribute('type', type='text/css');
        ukagaka_css.setAttribute('href', url);
        document.head.appendChild(ukagaka_css);
      }

      document.onreadystatechange = function () {
          if (document.readyState == "interactive") {
              load_style('/files/ukagaka.css');
              load_script('/files/jquery-ui.js');
              //load_script('/files/typed.js');
              load_script('/files/ukagaka.js');
              //load_script('/files/jquery.morris.ukagaka.resource.js');
          }
      }
    </script>
{% endif %}
