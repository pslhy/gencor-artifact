let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list = 
  let rec sort lst = 
    match lst with
    | [] | [_] -> lst
    | x::y::xs -> 
      let (sub1, mark1) = x in
      let (sub2, mark2) = y in
      if mark1 <= mark2 then x :: sort (y :: xs)
      else y :: sort (x :: xs)
  in
  sort subjectmarks


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
