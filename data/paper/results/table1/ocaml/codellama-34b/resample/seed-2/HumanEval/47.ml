(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)
let rec median (l : int list) : float =
    let n = List.length l in
    let l' = List.sort compare l in
    if n mod 2 = 0 then
        let m1 = List.nth l' (n / 2) in
        let m2 = List.nth l' (n / 2 - 1) in
        (m1 +. m2) /. 2.0
    else
        List.nth l' (n / 2) |> float_of_int

