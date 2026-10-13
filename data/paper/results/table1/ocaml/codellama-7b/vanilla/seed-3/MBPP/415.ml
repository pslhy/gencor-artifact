let rec max_Product (arr : int list) :  int * int =
  if List.length arr <= 1 then
    (0,0)
  else
    let n = List.length arr - 1 in
    let max_1 = max_Product (List.tl arr) in
    let max_2 = max_Product (List.tl (List.tl arr)) in
    let product_1 = fst max_1 * snd max_1 in
    let product_2 = snd max_1 * (snd max_2) in
    let product_3 = fst max_2 * snd max_2 in
    if product_2 > product_1 && product_2 > product_3 then
      (fst max_1,snd max_1)
    else if product_3 > product_1 && product_3 > product_2 then
      (fst max_2, snd max_2)
    else
      (fst max_2, snd max_2)

let r = max_Product [1;2;4;6;3;6;1;10]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
