let rec count_Substrings (s : string) : int = 
  let rec helper (s : string) (index : int) (current_sum : int) (current_length : int) (count : int) : int =
    if index = String.length s then count
    else
      let new_sum = current_sum + (int_of_char s.[index] - int_of_char '0') in
      let new_length = current_length + 1 in
      if new_sum = new_length then
        helper s (index + 1) new_sum new_length (count + 1)
      else
        helper s (index + 1) new_sum new_length count
  in
  helper s 0 0 0 0



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
