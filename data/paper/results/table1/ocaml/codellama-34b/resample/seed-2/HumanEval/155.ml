(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
let rec even_odd_count (num : int) :  int * int =
    match num with
    | 0 -> (0, 0)
    | n when n > 0 -> let (ev, od) = even_odd_count (n / 10) in
                     if n mod 2 = 0 then (ev + 1, od) else (ev, od + 1)
    | _ -> let (ev, od) = even_odd_count (-n) in
           (ev, od + 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:44: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_count (num : int) :  int * int =
    match num with
    | 0 -> (0, 0)
    | n -> let (ev, od) = even_odd_count (n / 10) in
           if n mod 2 = 0 then (ev + 1, od) else (ev, od + 1)

