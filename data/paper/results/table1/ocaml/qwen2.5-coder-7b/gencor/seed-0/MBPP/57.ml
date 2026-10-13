
let rec find_Max_Num (arr : int list) : int = 
  let rec sort_descending arr = 
    List.sort (fun a b -> - (compare a b)) arr in
  let rec concatenate arr = 
    let rec concat arr res = 
      match arr with 
        [] -> res 
      | x::xs -> concat xs ((string_of_int x) ^ res) in
    int_of_string (concat arr "") in
  concatenate (sort_descending arr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
