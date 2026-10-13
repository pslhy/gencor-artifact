let rec get_coordinates (test_tup :  int * int) : int list list =
    let (a, b) = test_tup in
    let values = [(0, 0); (0, 1); (1, 0); (1, 1)] in
    match values with
    | [] -> []
    | x :: rest ->
        (a + x) :: get_coordinates (b, (snd x) :: rest)
    | _ -> failwith "Invalid Coordinate"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
