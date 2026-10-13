let rec string_to_list (string : string) : string list =
  if string = "" then [] else begin
    let head = (String.sub string 0 1) in
    if head = "," then begin
      if String.length string > 1 then
        head :: string_to_list (String.sub string 1 (String.length string - 1))
      else
        [head]
    end else begin
      if String.contains string ',' then
        let index = String.index string ',' in
        (String.sub string 0 index) ::
        string_to_list (String.sub string (index + 1) (String.length string - index - 1))
      else
        [string]
    end
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
