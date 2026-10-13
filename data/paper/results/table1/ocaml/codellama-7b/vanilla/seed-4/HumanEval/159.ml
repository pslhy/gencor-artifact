let rec eat (number : int) (need : int) (remaining : int) : int list =
  if remaining <= 0 then
    [0; need - number]
  else if need <= 0 then
    [number; 0]
  else if number < need && remaining > 0 then
    let remaining' = remaining - 1 in
    let number' = number + 1 in
    let need' = need - number' in
    (number', need') :: eat number' need' remaining'
  else
    [number; need]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You're a hungry rabbit, and you already have eaten a certain number of carrots, *)
(*     but now you need to eat more carrots to complete the day's meals. *)
(*     you should return a list of [ total number of eaten carrots after your meals, *)
(*     the number of carrots left after your meals ] *)
(*     if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry. *)
(*     Example: *)
(*     >>> eat 5 6 10 *)
(*     [11; 4] *)
(*     >>> eat 4 8 9 *)
(*     [12; 1] *)
(*     >>> eat 1 10 10 *)
(*     [11; 0] *)
(*     >>> eat 2 11 5 *)
(*     [7; 0] *)
(*     Variables: *)
(*     @number : integer *)
(*     the number of carrots that you have eaten. *)
(*     @need : integer *)
(*     the number of carrots that you need to eat. *)
(*     @remaining : integer *)
(*     the number of remaining carrots thet exist in stock *)
(*     Constrain: *)
(*     * 0 <= number <= 1000 *)
(*     * 0 <= need <= 1000 *)
(*     * 0 <= remaining <= 1000 *)
(*     Have fun :) *)
