let rec count_reverse_pairs (test_list : string list) : int =
  let rec rank_string (s : string) : int =
    if s = "" then 0 else int_of_char (String.get s 0) + 26 * rank_string (String.sub s 1 (String.length s - 1)) in
  let rec unrank_string (n : int) : string =
    if n = 0 then "" else String.make 1 (char_of_int (n mod 26 + int_of_char 'a')) ^ unrank_string (n / 26) in
  let rec sublists (l : string list) : string list list =
    match l with
    | [] -> [[]]
    | h::t -> (List.map (fun l -> h::l) (sublists t)) @ (sublists t) in
  let rank_sublists = List.map (List.map rank_string) (sublists test_list) in
  let count_pairs_in_sublist (l : int list) : int =
    let rec count_pairs_between i j = 
      if j = List.length l then 0
      else if unrank_string (List.nth l j) = String.sub (unrank_string (List.nth l i)) 0 (String.length (unrank_string (List.nth l i))) then 1 + count_pairs_between i (j+1)
      else count_pairs_between i (j+1) in
    let rec count_pairs i = 
      if i = List.length l then 0
      else count_pairs_between i (i+1) + count_pairs (i+1) in
    count_pairs 0 in
  List.fold_left (+) 0 (List.map count_pairs_in_sublist rank_sublists)

let test_list = ["abc"; "cba"; "bca"; "cab"; "bac"; "def"]

(* Test the function with the example provided *)
print_int (count_reverse_pairs test_list) (* prints 4 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
