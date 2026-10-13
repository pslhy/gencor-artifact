let rec number_of_substrings (str : string) : int = 
  let len = String.length str in
  let rec helper (i : int) (count : int) : int =
    if i >= len then count
    else
      let rec count_substrings (j : int) (sub_count : int) : int =
        if j >= len then sub_count
        else count_substrings (j + 1) (sub_count + 1)
      in
      helper (i + 1) (count + count_substrings (i + 1) 0)
  in
  helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
