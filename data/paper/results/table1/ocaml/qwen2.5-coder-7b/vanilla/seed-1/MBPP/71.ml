let rec comb_sort (nums : int list) : int list = 
  let rec comb (gap: int) (swap: bool) (lst: int list) : int list =
    match gap, swap, lst with
    | _, _, [] | _, _, [_] -> lst
    | gap, swap, h1 :: h2 :: t when gap = 1 ->
        if h1 < h2 then comb 1 false t else comb 1 true (h2 :: h1 :: t)
    | gap, _, h1 :: h2 :: t -> 
        let new_gap = gap - gap div 1.3 in
        if gap < 1.0 then comb 1 false t else comb new_gap swap t
  in
  let len = List.length nums in
  if len <= 1 then nums else comb (len div 1.3) false nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
