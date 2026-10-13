let rec median (l : int list) : float =
    let rec merge (a: int list) (b: int list) : int list =
        match (a, b) with
        | ([], _) -> b
        | (_, []) -> a
        | (h1::t1, h2::t2) -> if h1 <= h2 then h1 :: merge t1 b else h2 :: merge a t2
    in
    let len = List.length l in
    if len mod 2 = 0 then
        float_of_int (List.nth (merge (List.tl l) [List.hd l]) (len/2-1))
                    +. float_of_int (List.nth (merge (List.tl l) [List.hd l]) (len/2)) /. 2.
    else 
       float_of_int (List.nth (merge (List.tl l) [List.hd l]) ((len-1)/2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)
