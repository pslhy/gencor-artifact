(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
let rec get_max_sum (n : int) : int =
    let rec aux (n : int) (cache : int Int.Table.t) : int =
        let sub_problems = [ (n / 2); (n / 3); (n / 4); (n / 5) ] in
        let max_sub_problem = List.fold_right (fun x y -> max x y) sub_problems 0 in
        let sum = max_sub_problem + n in
        if Int.Table.mem cache sum then
            cache.(sum)
        else
            (Int.Table.add cache sum sum;
            sum)
    in
    aux n (Int.Table.create ())

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:40: Unbound module "Int.Table" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int =
    let rec aux (n : int) (cache : int Int.Map.t) : int =
        let sub_problems = [ (n / 2); (n / 3); (n / 4); (n / 5) ] in
        let max_sub_problem = List.fold_right (fun x y -> max x y) sub_problems 0 in
        let sum = max_sub_problem + n in
        if Int.Map.mem cache sum then
            cache.(sum)
        else
            (Int.Map.add cache sum sum;
            sum)
    in
    aux n (Int.Map.empty)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:40: Unbound module "Int.Map" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int =
    let rec aux (n : int) (cache : int Map.t) : int =
        let sub_problems = [ (n / 2); (n / 3); (n / 4); (n / 5) ] in
        let max_sub_problem = List.fold_right (fun x y -> max x y) sub_problems 0 in
        let sum = max_sub_problem + n in
        if Map.mem cache sum then
            cache.(sum)
        else
            (Map.add cache sum sum;
            sum)
    in
    aux n (Map.empty)

