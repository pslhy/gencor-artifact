let rec bell_number (n : int) : int =
  match n with
  | 0 -> 1
  | n -> List.fold_right ( + ) (0 -- n) (bell_number (n - 1))

let partition (arr : 'a array) : 'a list list =
  let rec partition' (arr : 'a array) (n : int) (k : int) : 'a list list =
    if n = 0 then []
    else
      let rec partition_helper (arr : 'a array) (k : int) : 'a list list =
        match arr with
        | [||] -> []
        | [|x|] -> [ [x] ]
        | _ ->
          let left = partition_helper (Array.sub arr ~pos:1 ~len:(Array.length arr - 1)) (k - 1) in
          let right = partition_helper (Array.sub arr ~pos:1 ~len:(Array.length arr - 1)) k in
          List.map (fun x -> x @ [arr.(0)]) left @ List.map (fun x -> [arr.(0)] @ x) right
      in
      List.map (fun x -> x @ [arr.(0)]) (partition_helper arr n)
  in
  partition' arr (Array.length arr) (Array.length arr)

let bell_partition (n : int) : int =
  List.length (partition (Array.of_list (List.init (1 -- n) (fun x -> x))) n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
