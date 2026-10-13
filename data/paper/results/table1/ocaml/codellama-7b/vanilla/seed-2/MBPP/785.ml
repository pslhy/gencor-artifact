let rec tuple_str_int (test_str : string) :  int * int * int =
    match test_str with
    | "()" -> (0, 0, 0)
    | "(" || ") -> assert (false); (* Invalid input *)
    | "(" || "" ->
        let lhs, rhs, rem = tuple_str_int rem test_str in
        let y = int_of_string (String.rstrip_left rem ~drop:(`While (fun c -> c = ','))) in
        (lhs, rhs, y)
    | ")" || "" ->
        let rhs, rem = tuple_str_int rem test_str in
        let x = int_of_string (String.rstrip_left rem ~drop:(`While (fun c -> c = ','))) in
        (x, rhs, 0)
    | "," || "" ->
        let lhs, rhs, rem = tuple_str_int rem test_str in
        let y = int_of_string (String.rstrip_left rem ~drop:(`While (fun c -> c = ','))) in
        (lhs, y, 0)
    | _ ->
        let x = int_of_string (String.rstrip_left test_str ~drop:(`While (fun c -> c = ','))) in
        (x, 0, 0)

let str_to_int_tuple (test_str : string) : int * int * int =
    tuple_str_int test_str

let str_to_int_tuple_rev (test_str : string) : int * int * int =
    let rev_test_str = String.sub test_str ~pos:0 ~len:(String.length test_str) in
    let rev_tuple = String.concat (rev_test_str |> String.split ~on:',') in
    let int_tuple = (if String.is_empty rev_tuple then (0, 0, 0) else (String.split rev_tuple ~on:',' |> List.map ~f:int_of_string)) in
    (List.fold int_tuple ~init:(0, 0, 0) ~f:(fun acc x -> (x, acc |> fst, acc |> snd)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
