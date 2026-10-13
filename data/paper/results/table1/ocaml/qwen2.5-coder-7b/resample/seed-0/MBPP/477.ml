(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string = 
  let f (char : char) = if char >= 'A' && char <= 'Z' then char + 32 else char in
  across string.(n) (f n) as str 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:27: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_lower (string : string) : string = 
  let f (char : char) = if char >= 'A' && char <= 'Z' then char + 32 else char in
  let across s f = 
    let open String in
    let len = length s in
    let rec loop i acc = 
      if i = len then String.of_seq (Seq.rev acc) 
      else loop (i + 1) (Seq.cons (f (s.[i])) acc) 
    in loop 0 Seq.empty 
  in across string f

