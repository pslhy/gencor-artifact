let rec bell_number (n : int) : int =
  if n = 1 then
    1
  else
    List.fold_left (fun acc x -> acc + bell_number x) 0 [1..n]

let partition_bell_numbers (n : int) : int =
  List.length (find_partitions (bell_number n))

let rec find_partitions (n : int) : int list list =
  if n = 1 then
    [[1]]
  else
    let partitions = find_partitions (n - 1) in
    let rec add_to_partitions (x : int) (partitions : int list list) : int list list =
      match partitions with
      | [] -> [[x]]
      | partition :: _ when List.length partition = x ->
          partition :: add_to_partitions (x - 1) partitions
      | partition :: rest ->
          List.map (fun element -> element :: partition) partitions
          @ add_to_partitions (x - 1) rest
    in
    add_to_partitions (n - 1) partitions

let print_result n =
  let partitions = find_partitions n in
  Printf.printf "The number of ways to partition %d Bell numbers is %d\n" n (List.length partitions)

let () =
  let n = 5 in
  print_result n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
