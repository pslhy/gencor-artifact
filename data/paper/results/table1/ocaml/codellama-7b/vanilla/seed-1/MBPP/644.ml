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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
