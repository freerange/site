{
  actioncable = {
    dependencies = ["actionpack" "nio4r" "websocket-driver"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09m0ndy4hvb7m2qm81kbx6q9n0z0h968ixnz8zkv1lhv6z3rghlp";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "mail" "rails-dom-testing"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fxv67z83r5dx80s4ajcksb8qq29ff2ziypark7b8rrg6jz0lwh6";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "rack" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10sjvcyvl1gqg0czg2finipcnm7lw33k7igbbwxa4vzi45560m9d";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubi" "rails-dom-testing" "rails-html-sanitizer"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lzlhrci8kqi3yifhwsa43l2as5w8zvd30g7nqmv25rb37cnrdyj";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ray2ias3k8kmhn4sn2bqhfl2yin9vjbzvdq70v1910mdgbs91jm";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  activemodel = {
    dependencies = ["activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "171y3cx5a1bgzqpwyq1m0mb7k0yrfmr8nymg9cqmwh01iw2qyq85";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "arel"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rf71wszvn4ga361gzif1vw04kfmgwp4ckb71yqwxzscbblbd1zq";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  activestorage = {
    dependencies = ["actionpack" "activerecord" "marcel"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0prr7h1zmjh1r0csw88g6ybmyz2imm9y8wayblq8i9qh4maiq8pg";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02fdawr3wyvpzpja3r7mvb8lmn2mm5jdw502bx3ncr2sy2nw1kx6";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fvchp2rhp2rmigx7qglf69xvjqvzq7x0g49naliw29r2bz656sy";
      type = "gem";
    };
    version = "2.7.0";
  };
  arel = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jk7wlmkr61f6g36w9s2sn46nmdg6wn2jfssrhbhirv5x9n95nk0";
      type = "gem";
    };
    version = "9.0.0";
  };
  aws-eventstream = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "100g77a5ixg4p5zwq77f28n2pdkk0y481f7v83qrlmnj22318qq6";
      type = "gem";
    };
    version = "1.0.3";
  };
  aws-partitions = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dx2dasnn469y3a0wqa84d7g7fm0anjma2agkq620pbhqgwfypqi";
      type = "gem";
    };
    version = "1.210.0";
  };
  aws-sdk-core = {
    dependencies = ["aws-eventstream" "aws-partitions" "aws-sigv4" "jmespath"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18h35j7wp7n6zc5r6dpixjcyjshqmpkhwph9qgpv2g0db37zlxyk";
      type = "gem";
    };
    version = "3.66.0";
  };
  aws-sdk-kms = {
    dependencies = ["aws-sdk-core" "aws-sigv4"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14blvvfz67rhffi4ahby50jiip5f0hm85mcxlx6y93g0cfrnxh3m";
      type = "gem";
    };
    version = "1.24.0";
  };
  aws-sdk-s3 = {
    dependencies = ["aws-sdk-core" "aws-sdk-kms" "aws-sigv4"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14iv2wqvvbiz0gdms21i9n6rh8390r1yg4zcf8pzzfplbqfwqw4w";
      type = "gem";
    };
    version = "1.48.0";
  };
  aws-sigv4 = {
    dependencies = ["aws-eventstream"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1dfc8i5cxjwlvi4b665lbpbwvks8a6wfy3vfmwr3pjdmxwdmc2cs";
      type = "gem";
    };
    version = "1.1.0";
  };
  bootsnap = {
    dependencies = ["msgpack"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dyjk2irr0d3d3am2dzipg1zyv2nz69a16g8xkprxfa0na07wvs0";
      type = "gem";
    };
    version = "1.4.5";
  };
  builder = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qibi5s67lpdv1wgcj66wcymcr04q6j4mzws6a479n0mlrmh5wr1";
      type = "gem";
    };
    version = "3.2.3";
  };
  capybara = {
    dependencies = ["addressable" "mini_mime" "nokogiri" "rack" "rack-test" "regexp_parser" "xpath"];
    groups = ["development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mw1kv484fafzi1w9zizk09x30b8ijvmq7p2lalxwfphy52fyq0h";
      type = "gem";
    };
    version = "3.29.0";
  };
  concurrent-ruby = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x07r23s7836cpp5z9yrlbpljcxpax14yw4fy4bnp6crhr6x24an";
      type = "gem";
    };
    version = "1.1.5";
  };
  crass = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "030sc98kjrb36rh7g21qsbdfxrj6knsjkx0mn3b7gig8zknwhp2f";
      type = "gem";
    };
    version = "1.0.5";
  };
  diff-lcs = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  dotenv = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17hkd62ig9b0czv192kqdfq7gw0a8hgq07yclri6myc8y5lmfin5";
      type = "gem";
    };
    version = "2.7.5";
  };
  dotenv-rails = {
    dependencies = ["dotenv" "railties"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "028a14sl4h9mpfsvapqb9c7l54a7pj7wnj4hdri5himq52y6kpp0";
      type = "gem";
    };
    version = "2.7.5";
  };
  erubi = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kagnf6ziahj0d781s6ryy6fwqwa3ad4xbzzj84p9m4nv4c2jir1";
      type = "gem";
    };
    version = "1.8.0";
  };
  ffi = {
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06mvxpjply8qh4j3fj9wh08kdzwkbnvsiysh0vrhlk5cwxzjmblh";
      type = "gem";
    };
    version = "1.11.1";
  };
  globalid = {
    dependencies = ["activesupport"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zkxndvck72bfw235bd9nl2ii0lvs5z88q14706cmn702ww2mxv1";
      type = "gem";
    };
    version = "0.4.2";
  };
  httpclient = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "19mxmvghp7ki3klsxwrlwr431li7hm1lczhhj8z4qihl2acy8l99";
      type = "gem";
    };
    version = "2.8.3";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hfxnlyr618s25xpafw9mypa82qppjccbh292c4l3bj36az7f6wl";
      type = "gem";
    };
    version = "1.6.0";
  };
  jmespath = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1d4wac0dcd1jf6kc57891glih9w57552zgqswgy74d1xhgnk0ngf";
      type = "gem";
    };
    version = "1.4.0";
  };
  json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "158fawfwmv2sq4whqqaksfykkiad2xxrrj0nmpnc6vnlzi1bp7iz";
      type = "gem";
    };
    version = "2.3.1";
  };
  kramdown = {
    dependencies = ["rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vmw752c26ny2jwl0npn0gbyqwgz4hdmlpxnsld9qi9xhk5b1qh7";
      type = "gem";
    };
    version = "2.3.0";
  };
  listen = {
    dependencies = ["rb-fsevent" "rb-inotify" "ruby_dep"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01v5mrnfqm6sgm8xn2v5swxsn1wlmq7rzh2i48d4jzjsc7qvb6mx";
      type = "gem";
    };
    version = "3.1.5";
  };
  loofah = {
    dependencies = ["crass" "nokogiri"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0npqav026zd7r4qdidq9x5nxcp2dzg71bnp421xxx7sngbxf2xbd";
      type = "gem";
    };
    version = "2.3.1";
  };
  mail = {
    dependencies = ["mini_mime"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00wwz6ys0502dpk8xprwcqfwyf3hmnx6lgxaiq6vj43mkx43sapc";
      type = "gem";
    };
    version = "2.7.1";
  };
  marcel = {
    dependencies = ["mimemagic"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nxbjmcyg8vlw6zwagf17l9y2mwkagmmkg95xybpn4bmf3rfnksx";
      type = "gem";
    };
    version = "0.3.3";
  };
  method_source = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pviwzvdqd90gn6y7illcdd9adapw8fczml933p5vl739dkvl3lq";
      type = "gem";
    };
    version = "0.9.2";
  };
  mimemagic = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04cp5sfbh1qx82yqxn0q75c7hlcx8y1dr5g3kyzwm4mx6wi2gifw";
      type = "gem";
    };
    version = "0.3.3";
  };
  mini_mime = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1axm0rxyx3ss93wbmfkm78a6x03l8y4qy60rhkkiq0aza0vwq3ha";
      type = "gem";
    };
    version = "1.0.2";
  };
  mini_portile2 = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15zplpfw3knqifj9bpf604rb3wc1vhq6363pd6lvhayng8wql5vy";
      type = "gem";
    };
    version = "2.4.0";
  };
  minitest = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
  };
  msgpack = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qr2mkm2i3m76zarvy7qgjl9596hmvjrg7x6w42vx8cfsbf5p0y1";
      type = "gem";
    };
    version = "1.3.1";
  };
  nio4r = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gnmvbryr521r135yz5bv8354m7xn6miiapfgpg1bnwsvxz8xj6c";
      type = "gem";
    };
    version = "2.5.2";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yi8j8hwrlc3rg5v3w52gxndmwifyk7m732q9yfbal0qajqbh1h8";
      type = "gem";
    };
    version = "1.10.8";
  };
  public_suffix = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xnfv2j2bqgdpg2yq9i2rxby0w2sc9h5iyjkpaas2xknwrgmhdb0";
      type = "gem";
    };
    version = "4.0.1";
  };
  puma = {
    dependencies = ["nio4r"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cly51sqlz4ydpi5cshbrgjqgmysy26yca01lpnvhqvfvb4y9gl8";
      type = "gem";
    };
    version = "4.3.5";
  };
  rack = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i5vs0dph9i5jn8dfc6aqd6njcafmb20rwqngrf759c9cvmyff16";
      type = "gem";
    };
    version = "2.2.3";
  };
  rack-test = {
    dependencies = ["rack"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rh8h376mx71ci5yklnpqqn118z3bl67nnv5k801qaqn1zs62h8m";
      type = "gem";
    };
    version = "1.1.0";
  };
  rails = {
    dependencies = ["actioncable" "actionmailer" "actionpack" "actionview" "activejob" "activemodel" "activerecord" "activestorage" "activesupport" "railties" "sprockets-rails"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yq3fmgh9bs6v9c6ai0vlwxix1rijnv44zzii0lhqh9kx8nnp77j";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  rails-controller-testing = {
    dependencies = ["actionpack" "actionview" "activesupport"];
    groups = ["development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1m1rklj6pvzi4fydxcmcv4q0xd7913hhhw1hw530nfz1wkl7vjlf";
      type = "gem";
    };
    version = "1.0.4";
  };
  rails-dom-testing = {
    dependencies = ["activesupport" "nokogiri"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lfq2a7kp2x64dzzi5p4cjcbiv62vxh9lyqk2f0rqq3fkzrw8h5i";
      type = "gem";
    };
    version = "2.0.3";
  };
  rails-html-sanitizer = {
    dependencies = ["loofah"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ilwxzm3a7bql5c9q2n9g9nb1hax7vd8d65a5yp3d967ld97nvrq";
      type = "gem";
    };
    version = "1.2.0";
  };
  railties = {
    dependencies = ["actionpack" "activesupport" "method_source" "rake" "thor"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vks7ywa9b7l6ixg1j29jrzmh0rzp3z6a2xcnz1slgp04ll6m2bk";
      type = "gem";
    };
    version = "5.2.4.3";
  };
  rake = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cvaqarr1m84mhc006g3l1vw7sa5qpkcw0138lsxlf769zdllsgp";
      type = "gem";
    };
    version = "12.3.3";
  };
  rb-fsevent = {
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lm1k7wpz69jx7jrc92w3ggczkjyjbfziq5mg62vjnxmzs383xx8";
      type = "gem";
    };
    version = "0.10.3";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fs7hxm9g6ywv2yih83b879klhc4fs8i0p9166z795qmd77dk0a4";
      type = "gem";
    };
    version = "0.10.0";
  };
  recaptcha = {
    dependencies = ["json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rxvq917zrmdvdq77is1w2zhiy3k82q20vqd2x93qwv2wm1jsa6v";
      type = "gem";
    };
    version = "4.14.0";
  };
  regexp_parser = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1l44ml30jvqpdi3707x1n1dinq7fx9887pv3q2ywyfmi4kja7yf2";
      type = "gem";
    };
    version = "1.6.0";
  };
  rexml = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mkvkcw9fhpaizrhca0pdgjcrbns48rlz4g6lavl5gjjq3rk2sq3";
      type = "gem";
    };
    version = "3.2.4";
  };
  rollbar = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0k3rvzmv6ixcx3znkyfkmfjyk8rp7m9kpwa0rf3nw1fwjhgi7smr";
      type = "gem";
    };
    version = "2.24.0";
  };
  rspec-core = {
    dependencies = ["rspec-support"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0spjgmd3yx6q28q950r32bi0cs8h2si53zn6rq8s7n1i4zp4zwbf";
      type = "gem";
    };
    version = "3.8.2";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0x3iddjjaramqb0yb51c79p2qajgi9wb5b59bzv25czddigyk49r";
      type = "gem";
    };
    version = "3.8.4";
  };
  rspec-mocks = {
    dependencies = ["diff-lcs" "rspec-support"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12zplnsv4p6wvvxsk8xn6nm87a5qadxlkk497zlxfczd0jfawrni";
      type = "gem";
    };
    version = "3.8.1";
  };
  rspec-rails = {
    dependencies = ["actionpack" "activesupport" "railties" "rspec-core" "rspec-expectations" "rspec-mocks" "rspec-support"];
    groups = ["development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pf6n9l4sw1arlax1bdbm1znsvl8cgna2n6k6yk1bi8vz2n73ls1";
      type = "gem";
    };
    version = "3.8.2";
  };
  rspec-support = {
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "139mbhfdr10flm2ffryvxkyqgqs1gjdclc1xhyh7i7njfqayxk7g";
      type = "gem";
    };
    version = "3.8.2";
  };
  ruby_dep = {
    groups = ["default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c1bkl97i9mkcvkn1jks346ksnvnnp84cs22gwl0vd7radybrgy5";
      type = "gem";
    };
    version = "1.5.0";
  };
  sass = {
    dependencies = ["sass-listen"];
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p95lhs0jza5l7hqci1isflxakz83xkj97lkvxl919is0lwhv2w0";
      type = "gem";
    };
    version = "3.7.4";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      type = "gem";
    };
    version = "4.0.0";
  };
  sass-rails = {
    dependencies = ["railties" "sass" "sprockets" "sprockets-rails" "tilt"];
    groups = ["assets" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14vlfwdwzn308xhzgicwmhhryigis43gxfxlwb1d3mcixj3aqa4p";
      type = "gem";
    };
    version = "5.1.0";
  };
  soup = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pwswr4hgymq3qzc51hy785qn8knjml02y8gmmipfk3fqq00gmh2";
      type = "gem";
    };
    version = "1.0.14";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "182jw5a0fbqah5w9jancvfmjbk88h8bxdbwnl4d3q809rpxdg8ay";
      type = "gem";
    };
    version = "3.7.2";
  };
  sprockets-rails = {
    dependencies = ["actionpack" "activesupport" "sprockets"];
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ab42pm8p5zxpv3sfraq45b9lj39cz9mrpdirm30vywzrwwkm5p1";
      type = "gem";
    };
    version = "3.2.1";
  };
  thor = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yhrnp9x8qcy5vc7g438amd5j9sw83ih7c30dr6g6slgw9zj3g29";
      type = "gem";
    };
    version = "0.20.3";
  };
  thread_safe = {
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tilt = {
    groups = ["assets" "default" "development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ca4k0clwf0rkvy7726x4nxpjxkpv67w043i39saxgldxd97zmwz";
      type = "gem";
    };
    version = "2.0.9";
  };
  timecop = {
    groups = ["development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0d7mm786180v4kzvn1f77rhfppsg5n0sq2bdx63x9nv114zm8jrp";
      type = "gem";
    };
    version = "0.9.1";
  };
  tinify = {
    dependencies = ["httpclient"];
    groups = ["development"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cy21dhrphx3pq332pmh4cih8q7d94xjmy5y3fad2gqkdycxk4ky";
      type = "gem";
    };
    version = "1.5.0";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    groups = ["assets" "default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
  websocket-driver = {
    dependencies = ["websocket-extensions"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bxamwqldmy98hxs5pqby3andws14hl36ch78g0s81gaz9b91nj2";
      type = "gem";
    };
    version = "0.7.1";
  };
  websocket-extensions = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hc2g9qps8lmhibl5baa91b4qx8wqw872rgwagml78ydj8qacsqw";
      type = "gem";
    };
    version = "0.1.5";
  };
  xpath = {
    dependencies = ["nokogiri"];
    groups = ["default" "development" "test"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bh8lk9hvlpn7vmi6h4hkcwjzvs2y0cmkk3yjjdr8fxvj6fsgzbd";
      type = "gem";
    };
    version = "3.2.0";
  };
}