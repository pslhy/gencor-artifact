let rec monotonic (l : int list) : bool = match l with
    | [] | [_] -> true
    | x :: y :: xs -> 
        let direction = if x <= y then 1 else -1 in
        let rec check_direction dir lst =
            match lst with
            | [] | [_] -> true
            | a :: b :: bs -> 
                if (if dir = 1 then a <= b else a >= b) then check_direction dir bs else false
        in check_direction direction (y :: xs)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
