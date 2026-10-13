let rec remove_uppercase (str1 : string) : string =
  match String.index_opt str1 ~f:(fun c -> Char.is_uppercase c) with
  | Some i -> (
      (* Substring starts at index i *)
      let substr = String.sub str1 ~pos:i ~len:(String.length str1 - i) in
      (* Remove the substring from the original string *)
      let rest = String.sub str1 ~pos:0 ~len:i in
      (* Recursively remove the uppercase substrings from the rest of the string *)
      let new_rest = remove_uppercase rest in
      (* Concatentate the new rest of the string with the substring *)
      String.concat [new_rest; substr]
    )
  | None -> str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
