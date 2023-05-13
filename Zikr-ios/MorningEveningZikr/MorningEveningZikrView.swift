//
//  MorningEveningZikrView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/13.
//

import SwiftUI

struct MorningEveningZikrView: View {
    let morningEveningZikr: MorningEveningZikr
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Text(morningEveningZikr.arabicText)
                        .font(.custom("Damascus", size: 30))
                        .multilineTextAlignment (.trailing)
                        .lineSpacing(15)
                        .padding(5.0)
                }            }
            
            Section {
                Text(morningEveningZikr.translation)
                    .font(.custom("Times New Roman", size: 18))
            } header: {
                Text("Маъноси")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("contentForeground"))
            }
            
            Section {
                Text(morningEveningZikr.transliteration)
                    .font(.custom("Times New Roman",size: 18))
                    .italic()
            } header: {
                Text("Уқилиши")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("contentForeground"))
            }
        }
        .navigationTitle(morningEveningZikr.title)
    }
}

struct MorningEveningZikrView_Previews: PreviewProvider {
    static var previews: some View {
        MorningEveningZikrView(morningEveningZikr: MorningEveningZikr(id: 1, title: "Sample Supplication", arabicText: "اللَّهُمَّ إنِّي اسْألُكَ العَافِيَةَ فِي الدُّنْيَا وَالآخِرَةِ، اللَّهُمَّ إنِّي اسْألُكَ العَفْوَ وَالعَافِيَةَ فِي دِيْنِي وَدُنْيَايَ وَأهْلِي وَمَالِي، اللَّهُمَّ اسْتُرْ عَورَاتِي وَآمِنْ رَوْعَاتِي، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي وَمِنْ فَوقِي وَأعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي", translation: "Аллоҳим, мен Сендан дунё ва охиратда офият сўрайман. Эй Раббим, динимда ва дунёимда, аҳлимда ва молимда авф ва офият сўрайман. Эй Раббим, авратимни бекит, хавфларимни омонликка айлантир. Эй Аллоҳим, мени олдимдан, орқамдан, ўнг томонимдан, чап томонимдан, устимдан сақлагин. Эй Раббим, остимдан ҳалок қилишингдан Сенинг азаматинг ила паноҳ тилайман.", transliteration: "Аллоҳумма инний ас`алукал ъафийата фиддунйа вал ахироҳ. Аллоҳумма инний ас`алукал ъафва вал ъафийата фий дийний ва дунйайа ва аҳлий ва маалий. Аллоҳуммастур ъавротий ва амин равъатий. Аллоҳуммаҳфазний мин байни йадаййа ва мин холфий ва ъан йамийний ва ъан шималий ва мин фавқий ва аъузу биъазоматика ан уғтаала мин таҳтий.", type: "morning"))
    }
}
