Reputáciu získavaš za pýtanie sa otázok a odpovedanie na otázky.

### Určenie reputácie

Za dané aktivity získaš určité skóre, ktoré sa ti pripočíta k už nadobudnutej reputácii. Výpočet skóre za otázku vychádza z náročnosti a&nbsp;užitočnosti otázky. Výpočet skóre za odpoveď vychádza z náročnosti otázky a užitočnosti odpovede. Čím lepšie sa ti podarí zodpovedať čo náročnejšiu otázku, tým získaš väčšiu reputáciu. Práve preto môže mať používateľ s málo odpoveďami na náročné otázky vyššiu reputáciu, než používateľ, ktorý zodpovie veľa jednoduchších otázok.

### Úrovne reputácie

Používatelia sú rozdelení do niekoľkých úrovní podľa výšky ich reputácie. V každej úrovni je iba určitý počet používateľov, a preto ak niekto nadobudne väčšiu reputáciu a postúpi do vyššej úrovne je v dôsledku toho iný používateľ zaradený do nižšej úrovne. Ak máš sivú úroveň reputácie, je to preto, že ostatní používatelia vyhodnotili väčšinu tvojich otázok alebo odpovedí negatívne. Rozlišujeme štyri úrovne reputácie:

- Zlatá úroveň,
- Strieborná úroveň,
- Bronzová úroveň,
- Sivá úroveň.

<div class="user-reputation user-reputation-gold user-reputation-lg user-reputation-inline %>">
  <%= tooltip_icon_tag 'star-o', 'Zlatá úroveň reputácie', placement: :bottom %>
</div>

<div class="user-reputation user-reputation-silver user-reputation-lg user-reputation-inline %>">
  <%= tooltip_icon_tag 'angle-double-up', 'Strieborná úroveň reputácie', placement: :bottom %>
</div>

<div class="user-reputation user-reputation-bronze user-reputation-lg user-reputation-inline %>">
  <%= tooltip_icon_tag 'angle-up', 'Bronzová úroveň reputácie', placement: :bottom %>
</div>

<div class="user-reputation user-reputation-negative user-reputation-lg user-reputation-inline %>">
  <%= tooltip_icon_tag 'minus', 'Sivá úroveň reputácie', placement: :bottom %>
</div>
