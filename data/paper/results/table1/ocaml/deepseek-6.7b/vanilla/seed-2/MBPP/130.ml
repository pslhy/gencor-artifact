let rec max_occurrences (nums : int list) : int =
  let rec freq_count num = function
    | [] -> 0
    | x::xs -> (if num = x then 1 else 0) + freq_count num xs
  in
  let rec find_highest_freq nums seen max_freq max_num =
    match nums with
    | [] -> max_num
    | x::xs -> let count = freq_count x nums in
               if count > max_freq && not (List.mem x seen) then
                 find_highest_freq xs (x::seen) count x
               else 
                 find_highest_freq xs seen max_freq max_num
  in
  find_highest_freq nums [] 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
