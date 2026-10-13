
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    match input with
    | h :: t when k > 0 ->
            reverse_Array_Upto_K t (k-1) |> (fun x -> h :: x)
    | _ ->
        []
in

let rec reverse_Array (input : int list) : int list =
    match input with
    | h :: t ->
            reverse_Array t |> (fun x -> h :: x)
    | _ ->
        []
in

let rec reverse_Array_Upto (input : int list) (x : int) : int list =
    match input with
    | h :: t when x > 0 ->
            reverse_Array_Upto t (x-1) |> (fun x -> h :: x)
    | _ ->
        []
in

let test () : unit =
    let input = [1;2;3;4;5] in
    let k = 3 in
    let result = reverse_Array_Upto_K input k in
    let expected = [3;2;1] in
    if result = expected then
        print_endline "Test passed"
    else
        print_endline "Test failed";

    let result = reverse_Array input in
    let expected = [5;4;3;2;1] in
    if result = expected then
        print_endline "Test passed"
    else
        print_endline "Test failed";

    let result = reverse_Array_Upto input k in
    let expected = [3;2;1] in
    if result = expected then
        print_endline "Test passed"
    else
        print_endline "Test failed"
in

test ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
