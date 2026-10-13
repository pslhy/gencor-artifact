(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    let rec aux (acc :  (string * int) list) (subjectmarks :  (string * int) list) :  (string * int) list =
        match subjectmarks with
        | [] -> acc
        | (subject, mark) :: rest ->
            if mark > 0 then
                if (parselnt (mark)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    let rec aux (acc :  (string * int) list) (subjectmarks :  (string * int) list) :  (string * int) list =
        match subjectmarks with
        | [] -> acc
        | (subject, mark) :: rest ->
            if mark > 0 then
                let acc' = (subject, mark) :: acc in
                aux acc' rest
            else
                acc
    in
    aux [] subjectmarks

