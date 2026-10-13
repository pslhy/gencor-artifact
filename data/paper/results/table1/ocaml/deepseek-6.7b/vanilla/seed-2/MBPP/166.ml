let rec find_even_pair (a : int list) : int =
  match a with
  | [] -> 0
  | h::t ->
     let even_rest = find_even_pair t in
     let even_other = 
       List.filter (fun x -> h lxor x mod 2 = 0) t 
       |> List.length in
     even_rest + even_other

let get_pairs (a : int list) : (int * int) list = 
  let rec get_combinations (a : int list) : (int * int) list =
    match a with
    | [] -> []
    | h::t -> 
       let rest = get_combinations t in
       List.rev_append (List.map (fun x -> (h,x)) t) rest in
  List.rev_append (get_combinations (List.tl a)) (get_combinations (List.rev (List.tl (List.rev a))))

let count_even_pairs (a : int list) : int = 
  let pairs = get_pairs a in
  let count = List.filter (fun (p : int * int) -> 
    let (x,y) = p in
    x lxor y mod 2 = 0) pairs 
    |> List.length in
  count

let test1 = count_even_pairs [1; 2; 3]
let test2 = count_even_pairs [1; 2; 4]
let test3 = count_even_pairs [1; 1; 1]
let test4 = count_even_pairs [2; 4; 6]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
