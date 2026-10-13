let rec count_Substrings (s : string) : int = 
  let rec helper (s : string) (i : int) (map : int array) (acc : int) : int =
    if i >= String.length s then
      acc
    else
      let d = int_of_char (s.[i]) - int_of_char '0' in
      let new_acc = acc + (if d = map.(i) then 1 else 0) in
      let new_map = Array.copy map in
      new_map.(i + 1) <- new_map.(i) + 1;
      helper s (i + 1) new_map new_acc
  in
  let map = Array.make (String.length s + 1) 0 in
  helper s 0 map 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
