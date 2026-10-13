(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    List.sort (fun (_, v1) (_, v2) -> Stdlib.compare v1 v2) test_list
    |> fun sorted_list -> List.take k sorted_list

let test_cases = [
    (min_k [("a", 10); ("b", 20); ("c", 30); ("d", 40); ("e", 50)] 3, [("a", 10); ("b", 20); ("c", 30)]);
    (min_k [("f", 60); ("g", 70); ("h", 80)] 2, [("f", 60); ("g", 70)]);
    (min_k [("i", 90); ("j", 100)] 1, [("i", 90)])
]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:27: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    test_list
    |> List.sort (fun (_, v1) (_, v2) -> Stdlib.compare v1 v2)
    |> List.rev
    |> List.take k
    |> List.rev

let test_cases = [
    (min_k [("a", 10); ("b", 20); ("c", 30); ("d", 40); ("e", 50)] 3, [("a", 10); ("b", 20); ("c", 30)]);
    (min_k [("f", 60); ("g", 70); ("h", 80)] 2, [("f", 60); ("g", 70)]);
    (min_k [("i", 90); ("j", 100)] 1, [("i", 90)])
]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:8: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    test_list
    |> List.sort_by (fun (_, v) -> v)
    |> List.rev
    |> List.take k
    |> List.rev

let test_cases = [
    (min_k [("a", 10); ("b", 20); ("c", 30); ("d", 40); ("e", 50)] 3, [("a", 10); ("b", 20); ("c", 30)]);
    (min_k [("f", 60); ("g", 70); ("h", 80)] 2, [("f", 60); ("g", 70)]);
    (min_k [("i", 90); ("j", 100)] 1, [("i", 90)])
]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:8: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    List.sort (fun (_, v1) (_, v2) -> compare v1 v2) test_list
    |> List.rev
    |> List.take k
    |> List.rev

let test_cases = [
    (min_k [("a", 10); ("b", 20); ("c", 30); ("d", 40); ("e", 50)] 3, [("a", 10); ("b", 20); ("c", 30)]);
    (min_k [("f", 60); ("g", 70); ("h", 80)] 2, [("f", 60); ("g", 70)]);
    (min_k [("i", 90); ("j", 100)] 1, [("i", 90)])
]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:8: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    test_list
    |> List.sort_by (fun (_, v) -> v)
    |> List.takek

let test_cases = [
    (min_k [("a", 10); ("b", 20); ("c", 30); ("d", 40); ("e", 50)] 3, [("a", 10); ("b", 20); ("c", 30)]);
    (min_k [("f", 60); ("g", 70); ("h", 80)] 2, [("f", 60); ("g", 70)]);
    (min_k [("i", 90); ("j", 100)] 1, [("i", 90)])
]

