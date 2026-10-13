(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
let rec odd_length_sum (arr : int list) : int = 
  let rec sum_sublists start len acc = 
    if start + len > List.length arr then acc
    else 
      let sublist = List.sub arr start len in
      let sublist_sum = List.fold_left (+) 0 sublist in
      sum_sublists start (len + 2) (acc + if len mod 2 <> 0 then sublist_sum else 0)
  in
  sum_sublists 0 1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int = 
  let rec sum_sublists start len acc = 
    if start + len > List.length arr then acc
    else 
      let rec sublist_sum lst acc = 
        match lst with
        | [] -> acc
        | h::t -> sublist_sum t (acc + h)
      in
      let sublist = List.rev (List.tl (List.rev arr)) in
      sum_sublists start (len + 2) (acc + if len mod 2 <> 0 then sublist_sum sublist 0 else 0)
  in
  sum_sublists 0 1 0

