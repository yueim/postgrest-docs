Þ    e      D     l        £     ~   5	  8   ´	  X   í	     F
  )   L
  8   v
  )   ¯
  ,   Ù
  +     *   2  #   ]  [        Ý     ì  y     a   û     ]  	   n  t   x     í     õ          ¤     0     ¹  -   B     p  §     .  3     b  ÿ   q     q  ;     c  ½     !  l   *          (     .  l   ³           ¬  f  »     "      7     X  µ   ó  F   ©     ð  
     
             ¦     µ  -   Æ  p   ô     e    x      
     
   ¢     ­  f  ½     $!  $   @!  "   e!  -   !  z   ¶!     1"  +   Ä"     ð"     ÿ"     #  o  #  #   %     ,%  x   3%  y   ¬%  g   &&    &     ¬'  )   Ê'     ô'     (  ö   (     )     )  -   *  0   9*  ´   j*  `   +  W   +  ç   Ø+  S   À,     -     -     "-     )-     0-  7  7-     o.  b   ý.  %   `/  [   /     â/  +   é/  =   0  *   S0  *   ~0  )   ©0  (   Ó0  $   ü0  X   !1     z1  ¶   1  z   82  c   ³2     3  
   '3  o   23     ¢3     ©3  ¦   º3     a4     ï4  ~   5  <   6     C6     P6    å6     ÿ7  ×   8     ä8  W   ô8  )  L9     v:  v   }:  ¡   ô:  	   ;      ;  g   $<     <     =  (  +=     T>  $   a>  ¡   >  ¥   (?  2   Î?     @  
   @  
   @     ¤@     µ@     Ä@  ?   Õ@  o   A  	   A  Ø   A  Ù   hB  
   BC  
   MC     XC  ~  hC     çE  (   ÿE  &   (F  ,   OF  e   |F     âF  !   bG     G     G     H    /H     ÇI     æI  ~   íI  q   lJ  X   ÞJ    7K  *   =L     hL     L     L  ì   ¢L  w   M     N  -   N  0   ¹N  ·   êN  a   ¢O  Q   P  à   VP  V   7Q     Q     Q     Q     £Q     ªQ     E       9             ?   +   "   M   ]      =   e           X          G       A      O         _   '          @       W   T                 1   c      -              Q          ,   \         3      R       Z   $       C           6      #   /   `   .              )   b   F                  (           ;          V   J   <   S   L      &   D       %   :   K       I   
       [       0      d          P      8   7       ^   	      a      2   U              N   5   B      H       4   >   *       Y   !            :ref:`bulk_call` should now be done by specifying a ``Prefer: params=multiple-objects`` header. This fixes a performance regression when calling stored procedures. :ref:`embed_disamb` now shows an improved error message that includes relevant hints for clearing out the ambiguous embedding. A :ref:`how_tos` section was added to the documentation. A ``Retry-After`` header is now added when PostgREST is doing :ref:`automatic_recovery`. Added Added :ref:`community_tutorials` section. Added ``curl`` snippets to the :doc:`API <../api>` page. Added package managers to :ref:`install`. Added the :ref:`automatic_recovery` section. Added the :ref:`logical_operators` section. Added the :ref:`nested_embedding` section. Added the :ref:`schema_cache` page. Added the :ref:`templates` and :ref:`devops` sections to the :doc:`Ecosystem </ecosystem>`. Administration Allow PATCH/DELETE without ``Prefer: return=minimal`` on tables with no SELECT privileges |br| -- `@steve-chavez <https://github.com/steve-chavez>`_ Allow embedding a view when its source table foreign key is UNIQUE |br| -- `@bwbroersma <https://github.com/bwbroersma>`_ Big thanks from the `PostgREST team <https://github.com/orgs/PostgREST/people>`_ to our sponsors! Breaking changes Bug fixes Bulk calling an RPC is now allowed. See :ref:`bulk_call`. |br| -- `@steve-chavez <https://github.com/steve-chavez>`_ Changed Christopher Reid Config option for binding the PostgREST web server to an unix socket. See :ref:`server-unix-socket`. |br| -- `@Dansvidania <https://github.com/Dansvidania>`_ Config option for extending the supported media types. See :ref:`raw-media-types`. |br| -- `@Dansvidania <https://github.com/Dansvidania>`_ Config option for specifying PostgREST database pool timeout. See :ref:`db-pool-timeout`. |br| -- `@Qu4tro <https://github.com/Qu4tro>`_ Correct RPC return type handling for RETURNS TABLE with a single column (`#1930 <https://github.com/PostgREST/postgrest/issues/1930>`_). Default Unix Socket file mode from 755 to 660 Documentation improvements Dropped support for PostgreSQL 9.5 as it already reached its end-of-life according to `PostgreSQL versioning policy <https://www.postgresql.org/support/versioning/>`_. Dropped support for doing :ref:`hint_disamb` using dots instead of exclamation marks, e.g. doing ``select=*,projects.client_id(*)`` instead of ``select=*,projects!client_id(*)``). Using dots was undocumented and deprecated back in `v6.0.2 <https://github.com/PostgREST/postgrest/releases/tag/v6.0.2>`_. Error messages Escaping double quotes(``"``) in double-quoted surrounded strings is now possible by using backslashes, e.g. ``?col=in.("Double\"Quote")``. Backslashes can be escaped with a preceding backslash, e.g. ``?col=in.("Back\\slash")``. See :ref:`reserved-chars`. Evans Fernandes Explanation for :ref:`Schema Structure <schema_isolation>`. Explicit qualification introduced in ``v5.0`` is no longer necessary, this section will not be included from this version onwards.  A :ref:`db-extra-search-path` configuration parameter was introduced to avoid the need to explictly qualify database objects. If you install PostgreSQL extensions on the ``public`` schema, they'll work normally from now on. Features Fix many to many resource embedding for RPC/PATCH |br| -- `@steve-chavez <https://github.com/steve-chavez>`_ Fix self join resource embedding on PATCH |br| -- `@herulume <https://github.com/herulume>`_, `@steve-chavez <https://github.com/steve-chavez>`_ Fixed From this version onwards, the release page will include a single Linux static executable that can be run on any Linux distribution. Full changelog is available at `PostgREST releases page <https://github.com/PostgREST/postgrest/releases>`_. Functions with a :ref:`single unnamed parameter <s_proc_single_unnamed>` can now be used to POST raw ``bytea``, ``text`` or ``json/jsonb``. Functions(RPC) Historically, Resource Embedding was always done with a query that included the equivalent of a ``LEFT JOIN``, which meant you could not exclude any of the top-level resource rows. You can now use :ref:`embedding_top_level_filter` to do the equivalent of an ``INNER JOIN``, thus you can filter the top-level resource rows with any of the available operators. Horizontal Filtering How-to for :ref:`providing_img`. If you like to join them please consider `supporting PostgREST development <https://github.com/PostgREST/postgrest#user-content-supporting-development>`_. Ignoring payload keys for insert/update can be now done with the ``?columns`` query parameter. See :ref:`specify_columns`. |br| -- `@steve-chavez <https://github.com/steve-chavez>`_ Included the ability to quote columns that have :ref:`reserved-chars`. It's now possible to request a ``text/plain`` output. See :ref:`plain_text_output`. |br| -- `@steve-chavez <https://github.com/steve-chavez>`_ Jay Hannah Kofi Gumbs Michel Pelletier Nathan Bouscal Nicholas DiBiase Now you can filter :ref:`tabs-cols-w-spaces`. OpenAPI missing default values for String types (`#1871 <https://github.com/PostgREST/postgrest/issues/1871>`_). Partitioned Tables Partitioned tables now integrate with all the feature set. You can :ref:`embed partitioned tables <embedding_partitioned_tables>`, UPSERT, INSERT(with a correctly generated Location header) and make OPTIONS requests on them. They're also included in the generated OpenAPI. Partitions of a `partitioned table <https://www.postgresql.org/docs/current/ddl-partitioning.html#DDL-PARTITIONING-DECLARATIVE>`_ are no longer included in the :ref:`schema_cache`. This is so errors are not generated when doing resource embedding on partitioned tables. Pawel Tyll Petr Beles PostgREST 9.0.0 PostgreSQL 14 Beta 1 tightened its GUC naming scheme making it impossible to use multiple dots (``.``) and dashes (``-``) on custom GUC parameters, this caused our `old HTTP Context <https://postgrest.org/en/v8.0/api.html#accessing-request-headers-cookies-and-jwt-claims>`_ to fail across all requests. Thankfully, `@robertsosinski <https://github.com/robertsosinski>`_ got the PostgreSQL team to reconsider allowing multiple dots in the GUC name, allowing us to avoid a major breaking change. You can see the full discussion `here <https://www.postgresql.org/message-id/17045-6a4a9f0d1513f72b%40postgresql.org>`_. PostgreSQL 14 compatibility Reference for :ref:`mutation_embed`. Reference for :ref:`s_proc_embed`. Reference for filters on :ref:`json_columns`. Resource Embedding now outputs an error when multiple relationships between two tables are found, see :ref:`embed_disamb`. Resource Embedding on materialized views is now possible. See :ref:`embedding_views`. |br| -- `@vitorbaptista <https://github.com/vitorbaptista>`_ Resource Embedding with Top-level Filtering Robert Stolarz Schema Cache query failing with ``standard_conforming_strings = off`` (`#1992 <https://github.com/PostgREST/postgrest/issues/1992>`_). Severin Ibarluzea Still, dashes cannot be used on PostgreSQL 14 custom GUC parameters, so we changed our HTTP Context :ref:`to namespace using a mix of dots and JSON <guc_req_headers_cookies_claims>`. On older PostgreSQL versions we still use the :ref:`guc_legacy_names`. If you wish to use the new JSON GUCs on these versions, set the :ref:`db-use-legacy-gucs` config option to false. Support for :ref:`pre_req_headers`. Thanks Thanks to `Russell Davies <https://github.com/russelldavies>`_, Json Web Key Sets are now accepted by :ref:`jwt-secret`. Thanks to `Zhou Feng <https://github.com/zhoufeng1989>`_, now is possible to reference an external file in :ref:`db-uri`. The ``unknown`` value for three-valued logic can now be used on the ``is`` :ref:`operator <operators>`. This major version is released with PostgreSQL 14 compatibility and is accompanied with new features and bug fixes. You can look at the detailed changelog and download the pre-compiled binaries on the `GitHub release page <https://github.com/PostgREST/postgrest/releases/tag/v9.0.0>`_. This release is sponsored by: This release was made possible thanks to: Tsingson Qin Victor Adossi We now offer an statically linked binary for Linux. Look for **postgrest-<version>-linux-x64-static.tar.xz** on the `releases page <https://github.com/PostgREST/postgrest/releases>`_. |br| -- `@clojurians-org <https://github.com/clojurians-org>`_ You can download this release at the `PostgREST v7.0.0 release page <https://github.com/PostgREST/postgrest/releases/tag/v7.0.0>`_. You can see the full changelog at `PostgREST v7.0.1 release page <https://github.com/PostgREST/postgrest/releases/tag/v7.0.1>`_. `Daniel Babiak <https://github.com/dbabiak>`_ `Michel Pelletier <https://github.com/michelp>`_ ``Accept: application/vnd.pgrst.object+json`` behavior is now enforced for POST/PATCH/DELETE regardless of ``Prefer: return=minimal`` |br| -- `@dwagin <https://github.com/dwagin>`_ ``SIGHUP`` support was removed. You should use ``SIGUSR1`` instead. See :ref:`schema_reloading`. ``server-proxy-uri`` config option has been renamed to :ref:`openapi-server-proxy-uri`. `websearch_to_tsquery <https://www.postgresql.org/docs/current/functions-textsearch.html#id-1.5.8.19.7.2.2.7.1.1.1>`_ can now be used through the ``wfts`` operator. See :ref:`fts`. |br| -- `@herulume <https://github.com/herulume>`_ server-host default of ``127.0.0.1`` was changed to ``!4``. See :ref:`server-host`. v5.2.0 v6.0.2 v7.0.0 v7.0.1 v8.0.0 Project-Id-Version: PostgREST 9.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-01-13 01:06+0800
Last-Translator: YCH <chnyyk@gmail.com>
Language-Team: 
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
X-Generator: Poedit 3.0.1
 å¿é¡»æå® ``Prefer: params=multiple-objects`` å¤´æå¯ä»¥æ§è¡ :ref:`bulk_call`ï¼ä»èé¿åè°ç¨å­å¨è¿ç¨å¼èµ·çæ§è½ä¸éã :ref:`embed_disamb` çéè¯¯æç¤ºä¿¡æ¯åå«æ´æç¡®æç¤ºï¼ä»¥ä¾¿æé¤ææ­§ä¹çåµå¥ã ææ¡£æ°å¢ :ref:`how_tos` åå®¹ã å½ PostgREST æ­£å¨ :ref:`automatic_recovery` æ¶æ°å¢è¿å ``Retry-After`` ååºå¤´ã æ°å¢ æ°å¢ :ref:`community_tutorials` å°èã æ°å¢ :doc:`API <../api>` é¡µé¢ç ``curl`` ä»£ç çæ®µã :ref:`install` é¡µé¢å¢å åç®¡çå¨ã æ°å¢ :ref:`automatic_recovery` åå®¹ã æ°å¢ :ref:`logical_operators` åå®¹ã æ°å¢ :ref:`nested_embedding` åå®¹ã æ°å¢ :ref:`schema_cache` é¡µé¢ã æ°å¢ :doc:`çæ </ecosystem>` é¡µé¢ç :ref:`templates` å :ref:`devops` åå®¹ã ç®¡ç åè®¸ä¸å¸¦ ``Prefer: return=minimal`` å¤´ä¹è½å¨æ²¡æéæ©ï¼SELECTï¼æéçè¡¨ä¸æ§è¡ PATCH / DELETE æä½ã |br| â `@steve-chavez <https://github.com/steve-chavez>`_ åè®¸æºè¡¨å¤é®æ¯å¯ä¸ç´¢å¼ï¼UNIQUEï¼çè§å¾è¢«åµå¥ã |br| â `@bwbroersma <https://github.com/bwbroersma>`_ `PostgREST å¢é <https://github.com/orgs/PostgREST/people>`_ éå¸¸æè°¢æä»¬çèµå©åä»¬ï¼ ç ´åæ§æ¹å Bug ä¿®å¤ åè®¸æ¹éè°ç¨ RPCãåè§ :ref:`bulk_call`ã |br| â `@steve-chavez <https://github.com/steve-chavez>`_ åæ´ Christopher Reid éç½®éé¡¹ï¼æ¯æç»å® PostgREST Web æå¡å¨å° UNIX å¥æ¥å­ã åè§ :ref:`server-unix-socket`ã |br| â `@Dansvidania <https://github.com/Dansvidania>`_ éç½®éé¡¹ï¼æ°å¢æ´å¤åªä½ç±»åçæ¯æãåè§ :ref:`raw-media-types`ã |br| â `@Dansvidania <https://github.com/Dansvidania>`_ éç½®éé¡¹ï¼æ¯æè®¾ç½® PostgREST æ°æ®åºè¿æ¥æ± è¶æ¶æ¶é´ãåè§ :ref:`db-pool-timeout`ã |br| â `@Qu4tro <https://github.com/Qu4tro>`_ æ­£ç¡®å¤çååæ¶ RETURNS TABLE ç RPC è¿åç±»åï¼`#1930 <https://github.com/PostgREST/postgrest/issues/1930>`_ï¼ã é»è®¤ UNIX å¥æ¥å­æä»¶çæ¨¡å¼ç± 755 åæ´ä¸º 660ã ææ¡£æ¹è¿ ä¸åæ¯æ PostgreSQL 9.5ãæ ¹æ® `PostgreSQL çæ¬æ¿ç­ <https://www.postgresql.org/support/versioning/>`_ï¼å®å·²ç»ä¸åè¢«å®æ¹æ¯æã ä¸åæ¯æä½¿ç¨ç¹èä¸æ¯æå¹å·è¿è¡ :ref:`hint_disamb`ï¼å¦ä½¿ç¨ ``select=*,projects.client_id(*)`` èä¸æ¯ ``select=*,projects!client_id(*)``ãä½¿ç¨åç¹å¹¶æ ææ¡£è®°å½ä¸æ©å·²åºå¼äº `v6.0.2 <https://github.com/PostgREST/postgrest/releases/tag/v6.0.2>`_ã éè¯¯æ¶æ¯ æ¯æä½¿ç¨åææ è½¬ä¹åå¼å·ä¸­çåå¼å·ï¼``â``ï¼ï¼å¦ï¼``?col=in.(âDouble\âQuoteâ)``ãæ¯æåææ æ¬èº«è¢«è½¬ä¹ï¼å¦ï¼``?col=in.(âBack\\slashâ)``ãåè§ :ref:`reserved-chars`ã Evans Fernandes :ref:`Schema éç¦» <schema_isolation>` çè§£éè¯´æãTODO REPORTï¼åææ¡£éè¯¯ ``v5.0`` å¼å¥çæ¾å¼éå®ä¸åéè¦ï¼ä»è¿ä¸ªçæ¬å¼å§å°ä¸åæ¬è¿ä¸ªé¨åãåæ¶å¼å¥äºä¸ä¸ª :ref:`db-extra-search-path` éç½®åæ°ï¼ä»¥é¿åæ¾å¼éå®æ°æ®åºå¯¹è±¡ãä»ç°å¨å¼å§ï¼ææå¨ ``public`` Schema ä¸å®è£ PostgreSQL æ©å±é½å¯ä»¥æ­£å¸¸å·¥ä½äºã åè½ ä¿®å¤ RPC/PATCH çå¤å¯¹å¤ï¼M:Nï¼èµæºåµå¥é®é¢ã|br| â `@steve-chavez <https://github.com/steve-chavez>`_ ä¿®å¤ PATCH æä½æ¶ SELF JOIN çèµæºåµå¥é®é¢ã |br| â `@herulume <https://github.com/herulume>`_, `@steve-chavez <https://github.com/steve-chavez>`_ å·²ä¿®å¤ ä»è¿ä¸ªçæ¬å¼å§ï¼åå¸é¡µé¢å°åå«ä¸ä¸ªå¯ä»¥å¨ä»»ä½ Linux åè¡çä¸è¿è¡çåä¸ Linux éæå¯æ§è¡æä»¶ã å®æ´åæ´æ¥å¿ä½äº `PostgREST åå¸é¡µé¢ <https://github.com/PostgREST/postgrest/releases>`_ã å¸¦æ :ref:`åä¸ªæªå½ååæ° <s_proc_single_unnamed>` çå½æ°ç°å¨å¯ä»¥ç¨æ¥ POST åå§ ``bytea``ã``text`` æ ``json/jsonb``ã å½æ°ï¼RPCï¼ è¿å»ï¼èµæºåµå¥æ»æ¯éè¿æ¥è¯¢å®æçï¼ç­æäº ``LEFT JOIN``ï¼è¿æå³çä½ ä¸è½æé¤ä»»ä½é¡¶å±è®°å½è¡ãç°å¨ä½ å¯ä»¥ä½¿ç¨ :ref:`embedding_top_level_filter` æ§è¡ç­æäº ``INNER JOIN`` çæä½ï¼å æ­¤ä½ å¯ä»¥ç¨ä»»ä½å¯ç¨çæä½ç¬¦æ¥è¿æ»¤é¡¶å±è®°å½è¡ã æ°´å¹³ç­é :ref:`providing_img` æä½æåã å¦æä½ ä¹æ³åºç°å¨ä¸é¢çååä¸­ï¼è¯·èè `æ¯æ PostgREST å¼å <https://github.com/PostgREST/postgrest#user-content-supporting-development>`_ã å¯ç¨ ``?columns`` æ¥è¯¢åæ°æå® INSERT / UPDATE çä½ç¨å­æ®µãåè§ :ref:`specify_columns`ã |br| â `@steve-chavez <https://github.com/steve-chavez>`_ æ¯æå¼ç¨ååå« :ref:`reserved-chars` äºã æ°å¢æ¯æ ``text/plain`` è¯·æ±çè¾åºãåè§ :ref:`plain_text_output`ã |br| â `@steve-chavez <https://github.com/steve-chavez>`_ Jay Hannah Kofi Gumbs Michel Pelletier Nathan Bouscal Nicholas DiBiase ç°å¨å¯ä»¥ä½¿ç¨ :ref:`tabs-cols-w-spaces` è¿è¡ç­éäºã OpenAPI ç¼ºå¤±å­ç¬¦ä¸²ç±»åçé»è®¤å¼ï¼`#1871 <https://github.com/PostgREST/postgrest/issues/1871>`_ï¼ã ååºè¡¨ å¨é¢æ¯æååºè¡¨ãä½ å¯ä»¥ :ref:`åµå¥ååºè¡¨ <embedding_partitioned_tables>`ãUPSERTãINSERTï¼å½æä¸ä¸ªæ­£ç¡®çæç Location å¤´æ¶ï¼æåèµ· OPTIONS è¯·æ±ãåæ¶ä¹ä¼è¢«åå«è¿ OpenAPIã `ååºè¡¨ <https://www.postgresql.org/docs/current/ddl-partitioning.html#DDL-PARTITIONING-DECLARATIVE>`_ çååºä¸ååå«å¨ :ref:`schema_cache` ä¸­ï¼ä»¥é¿åå¨ååºè¡¨ä¸è¿è¡èµæºåµå¥æ¶åºç°éè¯¯ã Pawel Tyll Petr Beles PostgREST 9.0.0 PostgreSQL 14 Beta 1 æ¶ç´§äºå®ç GUC å½åæ¹å¼ï¼ä¸åè®¸å¨èªå®ä¹ç GUC åæ°ä¸ä½¿ç¨å¤ä¸ªç¹ï¼``.``ï¼åç­æ¨ªçº¿ï¼``-``ï¼ï¼è¿å¯¼è´äºæä»¬ç `èç HTTP ä¸ä¸æ <https://postgrest.org/en/v8.0/api.html#accessing-request-headers-cookies-and-jwt-claims>`_ å¨ææè¯·æ±ä¸­å¤±è´¥ãå¼å¾åºå¹¸çæ¯ï¼`@robertsosinski <https://github.com/robertsosinski>`_ è®© PostgreSQL å¢ééæ°èèåè®¸ GUC åç§°ä¸­ä½¿ç¨å¤ä¸ªç¹ï¼è®©æä»¬é¿åäºä¸æ¬¡éå¤§çç ´åæ§æ¹åãä½ å¯ä»¥å¨ `è¿é <https://www.postgresql.org/message-id/17045-6a4a9f0d1513f72b%40postgresql.org>`_ ä¸çå°å®æ´çè®¨è®ºã PostgreSQL 14 å¼å®¹æ§ :ref:`mutation_embed` çåèè¯´æã :ref:`s_proc_embed` çåèè¯´æã :ref:`json_columns` ç­éçåèè¯´æã å½ä¸¤ä¸ªè¡¨ä¹é´æå¤ä¸ªå³ç³»æ¶ï¼èµæºåµå¥å°ä¼æç¤ºéè¯¯ãåè§ :ref:`embed_disamb`ã èµæºåµå¥æ¯æç©åè§å¾ãåè§ :ref:`embedding_views`ã |br| â `@vitorbaptista <https://github.com/vitorbaptista>`_ å¸¦æé¡¶å±ç­éçèµæºåµå¥ Robert Stolarz ``standard_conforming_strings = off`` æ¶ Schema ç¼å­æ¥è¯¢å¤±è´¥ï¼`#1992 <https://github.com/PostgREST/postgrest/issues/1992>`_ï¼ã Severin Ibarluzea å°½ç®¡å¦æ­¤ï¼ç­æ¨ªçº¿ï¼``-``ï¼ä»ä¸è½å¨ PostgreSQL 14 çèªå®ä¹ GUC åæ°ä¸ä½¿ç¨ï¼æä»¥æä»¬æ HTTP ä¸ä¸ææ¹ä¸º :ref:`ä½¿ç¨ç¹å JSON çæ··åå½åç©ºé´<guc_req_headers_cookies_claims>`ãå¨ä»¥åç PostgreSQL çæ¬ä¸­ï¼æä»¬ä»ç¶å¯ä»¥ä½¿ç¨ :ref:`guc_legacy_names`ãå¦æä½ æ³å¨è¿äºçæ¬ä¸ä½¿ç¨æ°ç JSON GUCï¼è¯·å° :ref:`db-use-legacy-gucs` è®¾ç½®ä¸º falseã æ¯æ :ref:`pre_req_headers`. æè°¢ æè°¢ `Russell Davies <https://github.com/russelldavies>`_ï¼:ref:`jwt-secret` ç°å¨æ¥å JWKSï¼JSON Web Key Setsï¼äºã æè°¢ `Zhou Feng <https://github.com/zhoufeng1989>`_ï¼ç°å¨å¯ä»¥å¨ :ref:`db-uri` ä¸­å¼ç¨å¤é¨æä»¶äºã ä¸å¼é»è¾ç ``unknown`` ç°å¨å¯ä»¥è¢«ç¨äº ``is`` :ref:`æä½ç¬¦ <operators>`ã è¯¥ä¸»è¦çæ¬åå¸åå«äºå¯¹ PostgreSQL 14 çå¼å®¹ãé¨åæ°åè½å Bug ä¿®å¤ãä½ å¯ä»¥å¨ `GitHub åå¸é¡µé¢ <https://github.com/PostgREST/postgrest/releases/tag/v9.0.0>`_ æ¥çè¯¦ç»çæ´æ°æ¥å¿ï¼æä¸è½½å·²ç¼è¯å¥½çå¯æ§è¡æä»¶ã è¯¥çæ¬ç±ä»¥ä¸æºæ / ä¸ªäººèµå©ï¼ è¯¥çæ¬çåå¸è¦æè°¢ï¼ Tsingson Qin Victor Adossi æ°å¢ Linux éæé¾æ¥å¯æ§è¡æä»¶ï¼å¯å¨`åå¸é¡µé¢ <https://github.com/PostgREST/postgrest/releases>`_ æ¥æ¾ **postgrest-<version>-linux-x64-static.tar.xz**ã |br| â `@clojurians-org <https://github.com/clojurians-org>`_ å¯å¨ `PostgREST v7.0.0 åå¸é¡µé¢ <https://github.com/PostgREST/postgrest/releases/tag/v7.0.0>`_ ä¸è½½è¯¥çæ¬ã è¯·å¨ `PostgREST v7.0.1 åå¸é¡µé¢ <https://github.com/PostgREST/postgrest/releases/tag/v7.0.1>`_ æ¥çå®æ´çåæ´æ¥å¿ã `Daniel Babiak <https://github.com/dbabiak>`_ `Michel Pelletier <https://github.com/michelp>`_ æ å³ ``Prefer: return=minimal``ï¼``Accept: application/vnd.pgrst.object+json`` è¡ä¸ºç°å¨å¯¹ POST / PATCH / DELETE å¼ºå¶æ§è¡ï¼ |br| â `@dwagin <https://github.com/dwagin>`_ ç§»é¤å¯¹ ``SIGHUP`` çæ¯æï¼è¯·ä½¿ç¨ ``SIGUSR1`` æ¿ä»£ãåè§ :ref:`schema_reloading`ã éç½®éé¡¹ ``server-proxy-uri`` éå½åä¸º :ref:`openapi-server-proxy-uri`ã `websearch_to_tsquery <https://www.postgresql.org/docs/current/functions-textsearch.html#id-1.5.8.19.7.2.2.7.1.1.1>`_ å¯è¢« ``wfts`` æä½ç¬¦ä½¿ç¨ãåè§ :ref:`fts`ã |br| â `@herulume <https://github.com/herulume>`_ server-host é»è®¤å¼ç± ``127.0.0.1`` åæ´ä¸º ``!4``ãåè§ :ref:`server-host`ã v5.2.0 v6.0.2 v7.0.0 v7.0.1 v8.0.0 