let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    let rec aux (acc :  (string * int) list) (subjectmarks :  (string * int) list) :  (string * int) list =
        match subjectmarks with
        | [] -> acc
        | (subject, mark) :: rest ->
            if mark > 0 then
                if (parselnt (mark)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
