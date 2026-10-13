let rec bell_number (n : int) : int =
    if n <= 0 then 1
    else bell_number (n - 1) + bell_number (n - 2)

let rec part_bell (n : int) : int list =
    if n = 0 then [bell_number 0]
    else bell_number n :: part_bell (n - 1)

let rec count_partitions (lst : int list) : int =
    match lst with
    | [] -> 1
    | hd :: tl -> hd * count_partitions tl

let partition_ways (n : int) : int =
    let bell_partitions = part_bell n in
    count_partitions bell_partitions;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
