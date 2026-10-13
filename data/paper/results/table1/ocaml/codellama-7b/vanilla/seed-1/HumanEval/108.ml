let rec count_nums (arr : int list) : int =
match arr with
| [] -> 0
| hd :: tl ->
    let signed_digits : int list =
        if hd < 0 then List.map (fun x -> -x) (abs hd) else [abs hd]
    in
    (List.length signed_digits) + count_nums tl
    |> ignore; (* do not count any non-positive signed digits *)
    (List.filter (fun x -> x > 0) signed_digits)
    |> List.length
;;

let arr = [(-1); 11; (-11)];;
count_nums arr;;

let arr = [1; 1; 2];;
count_nums arr;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
