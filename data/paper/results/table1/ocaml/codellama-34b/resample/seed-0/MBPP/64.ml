(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    |[] -> []
    | (_,m)::rest -> if (m<10) then (_,m)::subject_marks rest
                      else sort_second_number rest;

let sort_second_number (L : (string * int) list ) :  (string * int) list =
    let sorted_list : (string * int) list = List.sort (fun (_,m1) (_,m2) -> m1-m2) L
  in 
    sorted_list;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:38: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (_, m)::rest -> if (m<10) then (_, m)::subject_marks rest
                      else sort_second_number rest;

let sort_second_number (l :  (string * int) list ) :  (string * int) list =
    let sorted_list : (string * int) list = List.sort (fun (_,m1) (_,m2) -> m1-m2) l
  in
    sorted_list;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (_, m)::rest -> if (m<10) then (_, m::subject_marks rest) else sort_second_number rest;

let sort_second_number (l :  (string * int) list ) :  (string * int) list =
    let sorted_list : (string * int) list = List.sort (fun (_,m1) (_,m2) -> m1-m2) l
  in
    sorted_list;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (_, m)::rest -> if (m<10) then (_, m::subject_marks rest) else (_, m::rest);

let sort_second_number (l :  (string * int) list ) :  (string * int) list =
    let sorted_list : (string * int) list = List.sort (fun (_,m1) (_,m2) -> m1-m2) l
  in
    sorted_list;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:39: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
    match subjectmarks with
    | [] -> []
    | (subject, mark)::rest -> if mark < 10 then (subject, mark)::subject_marks rest else (subject, mark)::rest;;

let sort_second_number (l :  (string * int) list ) :  (string * int) list =
    let sorted_list : (string * int) list = List.sort (fun (_,m1) (_,m2) -> m1-m2) l
  in
    sorted_list;;

