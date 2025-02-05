//
//  QuizBrain.swift
//  Ehliyet
//
//  Created by Burak Can Karadirek on 13.12.2024.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    var lastScore = 0
    
    let quiz = [
        Question(q: "I. Kazazedenin tedavi edilmesi II. Hayati tehlikenin ortadan kaldırılması III. Yaşamsal fonksiyonların sürdürülmesinin sağlanması Yukarıdakilerden hangileri ilk yardımın öncelikli amaçlarındandır?", a: ["I ve II", "I ve III", "II ve III", "I, II ve III"], correctAnswer: "II ve III"),
        Question(q: "Aşağıdakilerden hangisi, solunum yolu tıkanıklığı olan bir kazazedenin tam tıkanma yaşadığını gösteren belirtilerden biri değildir?", a: ["Konuşabilmesi", "Renginin morarması", "Nefes almasının durması", "Acı çekip ellerini boynuna götürmesi"], correctAnswer: "Konuşabilmesi"),
        Question(q: "I- Atardamar kanamaları II- Toplardamar kanamaları III- Kılcal damar kanamaları Yukarıda verilen kanama türlerinin hangilerinde, açık renkli kanın yara ağzından kalp atımına uyumlu şekilde fışkırarak çıktığı izlenir?", a: ["Yalnız I", "I ve II", "II ve III", "I, II ve III"], correctAnswer: "Yalnız I"),
        Question(q: "Aksine bir işaret yoksa, eğimsiz iki yönlü dar yolda, motorsuz ile motorlu taşıtın karşılaşmaları hâlinde, hangisi diğerine yol vermelidir?", a: ["Motorlu taşıt, motorsuz taşıta", "Motorsuz taşıt, motorlu taşıta", "Şeridi daralmış olan taşıt, diğerine", "Trafik yoğunluğu az olan yöndeki taşıt, diğerine"], correctAnswer: "Motorsuz taşıt, motorlu taşıta"),
        Question(q: "Yaralıyı araçtan çıkarırken aşağıdakilerden hangisine dikkat edilmelidir?", a: ["Kollarının baş hizasında durmasına", "Baş tarafından çekilerek çıkarılmasına", "Ayak tarafından çekilerek çıkarılmasına", "Baş-boyun-gövde hizasının bozulmamasına"], correctAnswer: "Baş-boyun-gövde hizasının bozulmamasına"),
        Question(q: "Aşağıdaki durumların hangisinde egzoz gazı daha fazla zarar verir?", a: ["Trafik ortamında kaldırımda beklenildiğinde", "Öndeki araç sürekli yakından takip edildiğinde", "Tünelde camları kapalı olarak araç kullanıldığında", "Kapalı garaj içinde uzun süre çalıştırılan aracın egzoz gazına maruz kalındığında"], correctAnswer: "Kapalı garaj içinde uzun süre çalıştırılan aracın egzoz gazına maruz kalındığında"),
        Question(q: "I- Yer işaretlemeleri II- Trafik işaret levhaları III- Işıklı ve sesli trafik işaretleri Belediyeler, yapım ve bakımından sorumlu oldukları kara yollarında, trafiği düzenleme amacı ile yukarıdakilerden hangilerini temin ve tesis etmekle görevlidir?", a: ["Yalnız I", "I ve II", "II ve III", "I, II ve III"], correctAnswer: "I, II ve III"),
        Question(q: "Motorlu bisiklet, motosiklet ve sürücüleri ile ilgili olarak aşağıdakilerden hangisinin yapılması yasaktır?", a: ["Geçme yaparken sinyal verilmesi", "Yaya yolunda sürülmesi", "Tehlikeli madde taşıyan araçların geçilmesi", "Gidiş yönüne göre yolun en sağından seyredilmesi"], correctAnswer: "Yaya yolunda sürülmesi"),
        Question(q: "Denetim ve kontroller sırasında, araç muayene süresini (sahip değiştirme hâli hariç) geçirdikleri tespit edilenlere aşağıdakilerden hangisi uygulanır?", a: ["Sadece para cezası verilir.", "Araçları trafikten men edilir.", "Muayene yaptırmaları için 30 günlük süre verilir.", "3 aydan az olmamak şartıyla hafif hapisle cezalandırılır."], correctAnswer: "Araçları trafikten men edilir."),
        Question(q: "Dönel kavşakta, geriye dönüşlerde aşağıdakilerden hangisinin yapılması yasaktır?", a: ["Sağa ve sola dönüş kurallarına uymak", "Orta adaya bitişik şeritten dönüşe geçmek", "Dönüş sonrası hızının gerektirdiği şeride girmek", "Ada etrafında dönerken gereksiz yere şerit değiştirmek"], correctAnswer: "Ada etrafında dönerken gereksiz yere şerit değiştirmek"),
        Question(q: "Şok durumundaki bir kazazedeye aşağıdakilerden hangisi uygulanmaz?", a: ["Sırt üstü yatırılıp ayaklarının yükseltilmesi", "Üzerinin örtülerek sıcak tutulması", "Hızla ağızdan sıvı verilmesi", "Hava yolunun açık tutulması"], correctAnswer: "Hızla ağızdan sıvı verilmesi"),
        Question(q: "Aşağıdakilerden hangisi araç lastiklerinde hava basıncının yetersiz olmasının sonuçlarındandır?", a: ["Direksiyon hakimiyetinin artması", "Lastik ömrünün uzaması", "Yakıt tüketiminin artması", "Fren mesafesinin kısalması"], correctAnswer: "Yakıt tüketiminin artması"),
        Question(q: "Trafik kazalarında asli kusur sayılan hallere örnek olarak aşağıdakilerden hangisi verilemez?", a: ["Aşırı hız yapmak", "Trafik işaretlerine uymamak", "Görüş mesafesi dışında sollama yapmak", "Yorgun araç kullanmak"], correctAnswer: "Yorgun araç kullanmak"),
        Question(q: "I- Kasisli yol II- İniş III- Tehlikeli viraj Yukarıdaki trafik işaretlerinden hangileri bir tehlikeye işaret eder?", a: ["Yalnız I", "I ve III", "II ve III", "I, II ve III"], correctAnswer: "I, II ve III"),
        Question(q: "Taşıt yolu üzerinde yol çizgilerinin anlamı nedir?", a: ["Trafiği hızlandırmak", "Taşıtların hızını sınırlamak", "Taşıtların yönünü belirlemek", "Taşıtların hareketlerini düzenlemek"], correctAnswer: "Taşıtların hareketlerini düzenlemek"),
        Question(q: "Araç muayenesinin zamanında yapılmaması durumunda aşağıdaki yaptırımlardan hangisi uygulanır?", a: ["Trafik cezası kesilir.", "Sürücü belgesi iptal edilir.", "Aracın sigortası geçersiz sayılır.", "Araca el konulur."], correctAnswer: "Trafik cezası kesilir."),
        Question(q: "Kazazedeye suni solunum yapılırken dikkat edilmesi gerekenlerden biri aşağıdakilerden hangisidir?", a: ["Göğsün kalkıp kalkmadığına bakmak", "Kazazedeyi sırt üstü yatırmak", "Kazazedenin el bileğini tutmak", "Kazazedenin ağzını kapalı tutmak"], correctAnswer: "Göğsün kalkıp kalkmadığına bakmak"),
        Question(q: "Trafik işaret levhalarıyla ilgili olarak aşağıdakilerden hangisi doğrudur?", a: ["Sadece sürücüler içindir.", "Görüş mesafesine göre yerleştirilir.", "Her kavşakta bulunması zorunludur.", "Geçici trafik düzenlemelerinde kullanılmaz."], correctAnswer: "Görüş mesafesine göre yerleştirilir."),
        Question(q: "Aşağıdakilerden hangisi araçlarda gereksiz yakıt tüketimine neden olmaz?", a: ["Aşırı hız yapmak", "Lastiklerin hava basıncının düşük olması", "Araç motorunun bakımsız olması", "Yokuş aşağı vites boşa alarak inmek"], correctAnswer: "Yokuş aşağı vites boşa alarak inmek"),
        Question(q: "Kara yolunda araç kullanan bir sürücü için aşağıdakilerden hangisi doğru bir davranış değildir?", a: ["Trafik kurallarına uymak", "Yavaşlama ve durma işaretlerine dikkat etmek", "Aracın teknik özelliklerini dikkate almak", "Trafik yoğunluğunu göz ardı etmek"], correctAnswer: "Trafik yoğunluğunu göz ardı etmek"),
        Question(q: "Araçlarda ilk yardım çantası bulundurulmasının temel amacı nedir?",
                 a: ["Kazaya karışan araçların tamirini sağlamak",
                     "Kaza sonrası basit müdahaleler yaparak hayat kurtarmak",
                     "Araçların muayenesinde kolaylık sağlamak",
                     "Trafik kurallarına uyumu artırmak"],
                 correctAnswer: "Kaza sonrası basit müdahaleler yaparak hayat kurtarmak"),

        Question(q: "Aşağıdakilerden hangisi bilinç kaybı yaşayan bir kişiye yapılmaması gerekenlerden biridir?",
                 a: ["Sakin bir ortam sağlanması",
                     "Hastanın ağız içinin kontrol edilmesi",
                     "Başın geriye doğru itilerek solunum yolunun açılması",
                     "Su ya da başka sıvı içirilmesi"],
                 correctAnswer: "Su ya da başka sıvı içirilmesi"),

        Question(q: "I- Reflektör II- Yangın söndürme cihazı III- Çekme halatı Yukarıdakilerden hangilerinin araçta bulundurulması zorunludur?",
                 a: ["Yalnız I",
                     "I ve II",
                     "II ve III",
                     "I, II ve III"],
                 correctAnswer: "I ve II"),

        Question(q: "Işıklı trafik işaret cihazında kırmızı ışık yandığında sürücüler ne yapmalıdır?",
                 a: ["Hızını artırarak geçiş yapmalıdır.",
                     "Durmalı, yayaların geçmesine izin vermelidir.",
                     "Sağa dönüş yaparak yolu boşaltmalıdır.",
                     "Yavaşlayarak dikkatle ilerlemelidir."],
                 correctAnswer: "Durmalı, yayaların geçmesine izin vermelidir."),

        Question(q: "Aşağıdakilerden hangisi güvenli sürüşün temel kurallarından biridir?",
                 a: ["Hız sınırını aşarak zaman kazanmak",
                     "Trafik işaret ve levhalarını dikkate almamak",
                     "Trafik ve yol şartlarına uygun hızda araç kullanmak",
                     "Diğer sürücülerin yaptıklarına aldırış etmemek"],
                 correctAnswer: "Trafik ve yol şartlarına uygun hızda araç kullanmak"),

        Question(q: "Bir araç sürücüsü, arkadan gelen başka bir araca yol vermek için aşağıdakilerden hangisini yapmalıdır?",
                 a: ["Sağ sinyal verip hızını artırmalıdır.",
                     "Hızını azaltarak sağ şeride geçmelidir.",
                     "Aniden durarak yol vermelidir.",
                     "Dörtlü flaşörlerini yakarak yavaşlamalıdır."],
                 correctAnswer: "Hızını azaltarak sağ şeride geçmelidir."),

        Question(q: "Trafik kazalarında ikinci derecede tehlikeli olan kazazedeye müdahalelerde öncelikle hangi organ sistemine dikkat edilir?",
                 a: ["Sindirim sistemi",
                     "Dolaşım sistemi",
                     "Sinir sistemi",
                     "Solunum sistemi"],
                 correctAnswer: "Solunum sistemi"),

        Question(q: "Aşağıdaki taşıtlardan hangisinin kara yolunu kullanma önceliği vardır?",
                 a: ["Servis aracı",
                     "Ambulans",
                     "Taksi",
                     "Kamyon"],
                 correctAnswer: "Ambulans"),

        Question(q: "Trafik kazası sonrası olay yerinde yapılan ilk müdahalenin amacı nedir?",
                 a: ["Kazayı kayıtlara geçirmek",
                     "Yaralıları en hızlı şekilde taşıyabilmek",
                     "Hayati tehlikeyi ortadan kaldırmak ve profesyonel yardım gelene kadar yaralıyı desteklemek",
                     "Kazanın sebebini belirlemek"],
                 correctAnswer: "Hayati tehlikeyi ortadan kaldırmak ve profesyonel yardım gelene kadar yaralıyı desteklemek"),
        Question(q: "Aşağıdaki durumların hangisinde sürücü araç kullanmaktan men edilir?",
                 a: ["Ehliyet yanında değilse",
                     "Araç sigortası yenilenmemişse",
                     "Alkollü araç kullanıyorsa",
                     "Aracın bakımı yapılmamışsa"],
                 correctAnswer: "Alkollü araç kullanıyorsa"),

        Question(q: "Trafik kazalarından sonra 'ikinci kaza' olarak adlandırılan durum genellikle neden kaynaklanır?",
                 a: ["Kazaya müdahalede gecikme",
                     "Kazadan sonra yeterince önlem alınmaması",
                     "Kazaya karışan araçların hızlı bir şekilde kaldırılması",
                     "Yaralılara bilinçsiz müdahale yapılması"],
                 correctAnswer: "Kazadan sonra yeterince önlem alınmaması"),

        Question(q: "Kaza yerinde bilinç kaybı olan bir kazazedenin hangi pozisyonda tutulması gerekir?",
                 a: ["Sırt üstü yatırılması",
                     "Yüz üstü yatırılması",
                     "Yarı oturur pozisyonda tutulması",
                     "Yan yatış (koma) pozisyonunda tutulması"],
                 correctAnswer: "Yan yatış (koma) pozisyonunda tutulması"),

        Question(q: "Aracınızın hızını azaltırken ani fren yapmak yerine hangi yöntem tercih edilmelidir?",
                 a: ["Debriyajı hızlıca bırakmak",
                     "Motor freni kullanarak kademeli yavaşlamak",
                     "El frenini kullanmak",
                     "Araç şerit değiştirdikten sonra fren yapmak"],
                 correctAnswer: "Motor freni kullanarak kademeli yavaşlamak"),

        Question(q: "I- Araç içi güvenlik donanımları II- Hava yastığı III- Emniyet kemeri Yukarıdakilerden hangileri trafik kazalarında ölüm oranlarını azaltır?",
                 a: ["Yalnız I",
                     "I ve II",
                     "II ve III",
                     "I, II ve III"],
                 correctAnswer: "I, II ve III"),

        Question(q: "Aşağıdakilerden hangisi, trafikte güvenli sürüşün önemli kurallarından biri değildir?",
                 a: ["Hız sınırına uymak",
                     "Trafik işaretlerini takip etmek",
                     "Sürekli şerit değiştirmek",
                     "Diğer araçlarla güvenli mesafeyi korumak"],
                 correctAnswer: "Sürekli şerit değiştirmek"),

        Question(q: "Aşağıdaki taşıtlardan hangisinin geçiş üstünlüğü yoktur?",
                 a: ["Ambulans",
                     "İtfaiye aracı",
                     "Sivil polis aracı",
                     "Halk otobüsü"],
                 correctAnswer: "Halk otobüsü"),

        Question(q: "Aracınızı park ederken aşağıdakilerden hangisine dikkat edilmesi gerekir?",
                 a: ["Motoru çalışır durumda bırakmak",
                     "Yaya geçidine 5 metre mesafede olmak",
                     "Park lambalarını açık bırakmak",
                     "Aracı yokuş yukarı fren bırakmadan park etmek"],
                 correctAnswer: "Yaya geçidine 5 metre mesafede olmak"),

        Question(q: "Aşağıdaki durumların hangisinde bir kavşakta ilk geçiş hakkı sizde olur?",
                 a: ["Ana yolda seyrediyorsanız",
                     "Tali yoldan ana yola çıkıyorsanız",
                     "Trafik ışıkları yoksa",
                     "Yaya geçidinde yayalara yol veriyorsanız"],
                 correctAnswer: "Ana yolda seyrediyorsanız"),

        Question(q: "Hangi durumda araç kullanmaya ara verilmelidir?",
                 a: ["Yorgunluk ve dikkat kaybı oluştuğunda",
                     "Yolda başka araçlar yokken",
                     "Hava aydınlık olduğunda",
                     "Güvenlik kontrolü yapılmadan önce"],
                 correctAnswer: "Yorgunluk ve dikkat kaybı oluştuğunda"),

        Question(q: "Trafikte şerit değiştirmek isteyen bir sürücünün öncelikle yapması gereken nedir?",
                 a: ["Hızını artırmak",
                     "Sinyal vermek",
                     "Ani fren yapmak",
                     "Diğer sürücülerin hızını azaltmasını beklemek"],
                 correctAnswer: "Sinyal vermek"),

        Question(q: "Aşağıdakilerden hangisi trafik kazalarında kazazedelere ilk yardım uygulamasının temel amaçlarından biri değildir?",
                 a: ["Hayati tehlikeyi ortadan kaldırmak",
                     "Kazazedenin şok durumunu azaltmak",
                     "Kazazedenin nakil süresini kısaltmak",
                     "Yaralıyı uygun bir pozisyonda tutmak"],
                 correctAnswer: "Kazazedenin nakil süresini kısaltmak"),
        Question(q: "Trafik işaretlerinde üçgen levhalar genellikle neyi ifade eder?",
                 a: ["Yasakları",
                     "Bilgilendirmeleri",
                     "Uyarıları",
                     "Trafik kurallarını"],
                 correctAnswer: "Uyarıları"),

        Question(q: "Trafikte geçiş üstünlüğüne sahip olan araçlar hangi durumlarda bu hakkı kullanamaz?",
                 a: ["Görev sırasında değillerse",
                     "Sireni ve tepe lambası çalışıyorsa",
                     "Acil bir görevdeyseler",
                     "Trafik polisi tarafından yönlendiriliyorlarsa"],
                 correctAnswer: "Görev sırasında değillerse"),

        Question(q: "Dizel motorlu araçlarda yakıt sistemine hava karışması durumunda aşağıdaki işlemlerden hangisi yapılmalıdır?",
                 a: ["Motor yağı değiştirilmelidir.",
                     "Akü kontrol edilmelidir.",
                     "Yakıt sistemi hava yapmaması için havası alınmalıdır.",
                     "Aracın hızına uygun vites seçilmelidir."],
                 correctAnswer: "Yakıt sistemi hava yapmaması için havası alınmalıdır."),

        Question(q: "Yaya geçidinde karşıya geçmek isteyen yayalara sürücüler ne yapmalıdır?",
                 a: ["Geçiş üstünlüğünü kullanmalıdır.",
                     "Durup yayaların geçişine izin vermelidir.",
                     "Yavaşlayarak yayaları bekletmelidir.",
                     "Yayaların hızla geçmesini sağlamalıdır."],
                 correctAnswer: "Durup yayaların geçişine izin vermelidir."),

        Question(q: "Aracın lastik hava basıncının önerilenden düşük olması durumunda ne gibi bir sorun yaşanır?",
                 a: ["Yakıt tüketimi azalır.",
                     "Lastiklerin ömrü uzar.",
                     "Fren mesafesi artar.",
                     "Aracın hızı artar."],
                 correctAnswer: "Fren mesafesi artar."),

        Question(q: "Bir araçta güvenli sürüş için dikiz aynalarının ayarı nasıl yapılmalıdır?",
                 a: ["Sadece arka camı gösterecek şekilde ayarlanmalıdır.",
                     "Aracın arka kısmının tamamını gösterecek şekilde ayarlanmalıdır.",
                     "Hem arka hem de yan şeritleri görebilecek şekilde ayarlanmalıdır.",
                     "Yalnızca yan şeritleri gösterecek şekilde ayarlanmalıdır."],
                 correctAnswer: "Hem arka hem de yan şeritleri görebilecek şekilde ayarlanmalıdır."),

        Question(q: "Trafik ışıklarında sarı ışık yandığında sürücüler ne yapmalıdır?",
                 a: ["Durmadan geçmelidir.",
                     "Hazırlık için hızlanmalıdır.",
                     "Yavaşlayarak durmaya hazırlanmalıdır.",
                     "Dörtlü flaşörleri yakmalıdır."],
                 correctAnswer: "Yavaşlayarak durmaya hazırlanmalıdır."),

        Question(q: "Araç muayenesi sırasında aşağıdaki belgelerden hangisinin ibraz edilmesi zorunludur?",
                 a: ["Ehliyet",
                     "Trafik sigorta poliçesi",
                     "Kimlik belgesi",
                     "Trafik ceza makbuzu"],
                 correctAnswer: "Trafik sigorta poliçesi"),

        Question(q: "Aşağıdakilerden hangisi motor soğutma sisteminin temel görevlerinden biridir?",
                 a: ["Yakıtın daha hızlı yanmasını sağlamak",
                     "Motorun aşırı ısınmasını önlemek",
                     "Motorun çalışmamasını sağlamak",
                     "Egzoz emisyonlarını azaltmak"],
                 correctAnswer: "Motorun aşırı ısınmasını önlemek"),

        Question(q: "Trafik kazası sonrası kaza yerinde güvenliği sağlamak için öncelikle ne yapılmalıdır?",
                 a: ["Kaza yapan araçlar hemen kaldırılmalıdır.",
                     "Olay yerine ambulans çağırılmalıdır.",
                     "Kaza mahalline reflektör veya işaret konmalıdır.",
                     "Yaralılar hızlıca taşınmalıdır."],
                 correctAnswer: "Kaza mahalline reflektör veya işaret konmalıdır."),

        Question(q: "Sisli havalarda araç kullanırken hangi ışıkların kullanılması zorunludur?",
                 a: ["Uzun farlar",
                     "Park lambaları",
                     "Sis lambaları",
                     "Flaşörler"],
                 correctAnswer: "Sis lambaları"),

        Question(q: "Trafik işaretlerinde mavi zemin üzerine beyaz işaretler ne anlama gelir?",
                 a: ["Uyarı işaretleri",
                     "Yasak işaretleri",
                     "Bilgi işaretleri",
                     "Trafik düzenleme işaretleri"],
                 correctAnswer: "Bilgi işaretleri")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func getLastScore() -> Int {
        return lastScore
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            lastScore = score
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
