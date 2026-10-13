let rec odd_values_string (str : string) : string =
  let b = Buffer.create (String.length str) in
  let rec loop i =
    if i < String.length str then begin
      if i mod 2 = 0 then Buffer.add_char b (String.get str i);
      loop (i + 1)
    end
  in
  loop 0;
  Buffer.contents b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
