let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  if pattern = ""
  then raise Not_found;

  if text = pattern then raise Not_found;

  match text with
  | "" -> raise Not_found
  | _ ->
      let text' = String.sub text 1 (String.length text - 1) in
      let pattern' = String.sub pattern 1 (String.length pattern - 1) in
      if text' = pattern' then raise Not_found;
      let found = ref false in
      let start_ind = ref (-1) in
      let end_ind = ref (-1) in
      for i = 0 to (String.length text) - 1 do
        if text.'i = pattern.'0 then
          found := true;
          start_ind := i;
        else
          found := false;
          start_ind := -1;
        end else if text.'i = pattern." string_length pattern - 1 && found then
          end_ind := i+1;
          raise Not_found;
          | Error


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
