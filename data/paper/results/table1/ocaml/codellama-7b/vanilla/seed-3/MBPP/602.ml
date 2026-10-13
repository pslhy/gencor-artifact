let rec first_repeated_char (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let rec is_repeated (i : int) : bool =
      let ch = str1.[i] in
      (i >= 1 && ch = str1.[i-1]) || is_repeated (i - 1)
    in
    let rec find_repeated (i : int) : string option =
      if i = String.length str1 then
        None
      else begin
        if is_repeated i then
          Some (str1.[i])
        else
          find_repeated (i + 1)
      end
    in
    find_repeated 0
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
