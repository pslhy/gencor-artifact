
let rec max_occurrences (nums : int list) : int = 
  let rec count acc num = 
    if num::nums = [] then acc
    else if num = acc then count (acc + 1) num
    else count acc num in
  let rec max_freq_acc current_max current_num rest = 
    match rest with
    | [] -> current_max
    | h::t -> if count 0 h > count 0 current_max then max_freq_acc h h t
              else max_freq_acc current_max h t in
  max_freq_acc 0 0 nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
