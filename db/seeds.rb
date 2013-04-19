Setting.destroy_all
User.destroy_all
Category.destroy_all
Article.destroy_all
Feature.destroy_all
Vote.destroy_all

Setting.create!(background: File.open(File.join(Rails.root, '/public/test4.jpg')))

User.create!(name: "test", power: 100)
User.create!(name: "reporter", power: 1)
User.create!(name: "student", power: 0)

categories = Category.create!([
  { name: '阅读' },
  { name: '观点' },
  { name: '调查' },
  { name: '人物' }])

rand = Random.new

content = <<_EOF_
<p>股市“跌跌不休”，金价持续低迷，银行理财产品和艺术品投资也不保险……面对重回“负利率”时代的通胀压力，工薪阶层几大传统投资理财渠道几乎全部受阻。在博鳌亚洲论坛2013年年会上，如何让百姓的“钱袋子”不缩水进而保值增值，成为与会嘉宾探讨的焦点之一。</p>
<p>投资渠道少，百姓“钱袋子”缩水</p>
<p>“中国拥有领跑世界的GDP增速，却也拥有‘熊冠全球’的股市，这与其全球第二大经济体的地位极不相称。”上海证券交易所首席经济学家胡汝银说。</p>
<p>清明假期前一天，上证综指收报2225.3，较2007年创下6124点的历史高点已累计下跌六成多。而与此同时，同样以经济复苏为背景，美国道琼斯指数近期却创出历史新高。</p>
<p>与会嘉宾、诺贝尔经济学奖获得者费尔普斯表示，对于广大散户来说，当然更加关心股市投资能获得多少真金白银的回报，这需要政府通过制度措施保护中小投资者利益。但要注意，美国通过量化货币宽松政策等手段提振经济和股市，中国不应盲目借鉴。中国真正要学习的是发达资本市场的管理经验。</p>
<p>2月，我国CPI同比上涨3.2%。而当前央行的一年期存款基准利率为3%，定期存款难以增值保值。</p>
<p>国际国内黄金白银价格也持续走弱，“当前经济形势错综复杂，金银价格变化非常快，短线投资风险依然较大。”复旦大学经济学院副院长孙立坚[微博]说。</p>
<p>与此同时，近两年银行理财产品维持热度不减，但部分产品收益率一路走低。一些高收益理财产品动辄50万元甚至上百万元的门槛让普通投资者望而却步。</p>
<p>市场“不差钱”而“差制度”</p>
<p>尽管有关部门不断加大对资本市场的监管力度，但纵观中国股市，与“牛短熊长”并行的，是屡见不鲜的过度包装、业绩“变脸”，甚至虚构利润、操纵股价、内幕交易、欺诈上市。</p>
<p>“股市疲软的主因是信心匮乏，信心匮乏的原因是诚信匮乏，根源在于监管和股权文化的匮乏。”中国人民大学商法研究所所长刘俊海说。</p>
<p>另一方面，部分银行理财产品管理混乱，导致百姓投资受损。春华资本集团董事长胡祖六表示，一些机构对投资者的教育和提示不够，甚至误导投资者。近日银监会发布规范商业银行理财业务的“八号文件”，力图加大市场透明度。</p>
<p>“老百姓把钱放在银行的回报率太低甚至缩水，但又找不到合适的保值增值渠道。”胡祖六说。截至2012年末，中国居民个人储蓄余额高达41万亿元。</p>
<p>一些论坛嘉宾说，中国投资市场“不差钱”，差的是制度建设。在证券现货市场规模不断扩张的同时，证券衍生品市场发展却严重滞后。中国金融期货交易所开业近7年，目前仅有沪深300(2483.547,-2.84,-0.11%)指数期货一只品种。而其较高的投资门槛，则将普通投资者拒之门外。</p>
<p>作为风险相对较低、收益更为稳健的债券市场，实际上并未对老百姓彻底敞开大门。胡汝银举例说，目前个人投资者不能投资银行间市场的央行票据、政策性金融债等。</p>
<p>投资渠道应多元规范</p>
<p>“改变市场监管的理念与制度应成为中国未来五年资本市场改革的‘重头戏’。”胡祖六认为，不应把监管的资源和精力全部花在具体的产品和业务上。</p>
<p>与会专家认为，从微观层面，也应继续理顺和规范现有的银行理财等投资渠道，加大对违法违规行为的打击力度，提高透明度及对投资者的保护和教育。</p>
<p>让老百姓的“钱袋子”鼓起来，还要给他们创造多元化和长期投资的空间和机会。“应该建立多元化、多层次、多品种的金融体系，短期、中期、长期的产品相结合，让投资者可以灵活选择。”胡祖六说。</p>
<p>上海交通大学上海高级金融学院副院长朱宁说，应发展和壮大债券等投资市场。如果股票市场不能改善公司治理和保护投资者，投资者可以通过债券市场进行投资。</p>
<p>农民目前无法从房地产业中获得土地的增值收益，居民也难以进行合理的投资。华远地产(3.45,-0.04,-1.15%)董事长任志强认为，楼市调控的思路应转移到对制度的改造和创新上来，如给农民以土地产权，解决城市化中的权力保护与转移。适时建立长效机制取代“限购”“限价”等行政调控手段。</p>
<p>富达国际投资总裁安东尼·波顿说，让公众财富保值增值，他们才会迈向健康而有保障的退休生活。中国应继续加速金融改革进程。</p>
<p>(据新华社博鳌4月6日电新华社记者王晖余、潘青</p>
_EOF_

categories.each do |cat|
  (rand.rand(10)+20).times do |i|
    cat.articles.create!(title: "Test article #{i} in #{cat.name}", content: content, source: "test.seiue.com:3000", author: User.first, is_verified: true)
  end
end

# with imgs
Category.renwu.articles.create!(title: "看看这个人", content: content + "<img src=\"/test3.png\" >", author: User.first, is_verified: true)
Category.diaocha.articles.create!(title: "北大附中", content: content + "<img src=\"/test2.jpg\" >", author: User.first, is_verified: true)


Category.diaocha.articles.create!(title: "未审查的文章", content: content, author: User.first)
Category.yuedu.articles.create!(title: "未审查的文章", content: content, author: User.first)
Category.yuedu.articles.create!(title: "未审查的文章", content: content, author: User.first)


feature = Feature.create!(title: "Test feature", content: "This is a test feature.", articles: Article.all[1..10], poster: File.open(File.join(Rails.root, '/public/test.jpg')))

vote = Vote.create!(title: "Test Vote 1", options: (1..4).map{|i|Vote::Option.new(content: "Option " + i.to_s + " in the vote.")})
vote = Vote.create!(title: "测试投票 2", options: (1..4).map{|i|Vote::Option.new(content: "选项" + i.to_s)})
