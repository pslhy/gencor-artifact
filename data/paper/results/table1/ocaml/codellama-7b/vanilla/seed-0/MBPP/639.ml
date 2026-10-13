let rec sample_nam (sample_names : string list) : int =
  match sample_names with
  | [] -> 0
  | hd :: tl -> (
      let hd_length = String.length hd
      match hd.[0] with
      | 'a' .. 'z' -> 0
      | _ -> hd_length + sample_nam tl
      )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
