
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    let rec aux (acc :  (string * int) list) (subjectmarks :  (string * int) list) :  (string * int) list =
        match subjectmarks with
        | [] -> acc
        | (subject, mark) :: rest ->
            if mark > 0 then
                if (mark, subject) :: acc <> [] then
                    aux ((subject, mark) :: acc) rest
                else
                    aux acc rest
            else
                aux ((subject, mark) :: acc) rest
    in
    aux [] subject_marks
    
let sort_by_second (tuples :  (string * int) list) :  (string * int) list =
    let sort_by_second_aux (tuples :  (string * int) list) :  (string * int) list =
        match tuples with
        | [] -> []
        | (_, 0) :: rest ->
            if tuples <> [] then
                (subject_marks tuples) :: rest
            else
                tuples
        | (_, mark) :: rest ->
            if mark >= 0 then
                if rest <> [] then
                    (subject_marks tuples) :: rest
                else
                    tuples
            else
                tuples
    in
    sort_by_second_aux tuples

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
