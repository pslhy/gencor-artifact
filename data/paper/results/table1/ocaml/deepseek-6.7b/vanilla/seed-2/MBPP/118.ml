let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | _ -> let space_index = String.index_from string 0 ' ' in
         let next_index = 
            try String.index_from string (space_index + 1) ' ' 
            with Not_found -> String.length string
         in String.sub string 0 next_index
                :: string_to_list (String.sub string next_index (String.length string - next_index))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
