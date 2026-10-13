
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    (* base case: if list is empty return 0 *)
    (match test_list with 
    | [] -> 0
    | (head, tail) -> 
        (* if both head and tail are equal to 0, return 0 *)
        (if head == 0 && tail == 0 then 0
        else (* if head and tail are not equal to 0, check if they are in the list *)
            let rec check_pair ((head, tail) : int * int) : bool =
            (match test_list with
            | [] -> false
            | (head', tail') when head == head && tail == tail -> true
            | (head', tail') when head == tail && tail == head -> true
            | (head', tail') when tail == head && head == tail -> true
            | _ -> false) in
            (* count the number of pairs that are in the list *)
            let count = test_list |> List.filter check_pair |> List.length in
            (* add one to the count if the pair is not in the list already *)
            if not (check_pair (head, tail)) then count + 1
            else count)
    )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
