let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list = 
    (* base case: ignore if list has only one value *)
    (match subjectmark with
    |[] -> []
    |[x] -> [x]
    (* compare the first element with the remaining list, and recurse *)
    |(subject, mark)::tail -> 
        let small = subject_marks tail in
        if mark <= (snd (List.hd small)) then [(subject, mark)] @ small else small @ [(subject, mark)])

 let _ = subject_marks [("ocaml", 45); ("programming", 60); ("ml", 80); ("languages", 90); ("functional",70)]



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
