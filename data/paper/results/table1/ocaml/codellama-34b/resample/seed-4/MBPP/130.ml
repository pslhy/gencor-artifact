(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int = 
    (* Declare and initialize a variable to hold the maximum occurrence count *)
    let max_occurrence = ref 0 in
    (* Declare and initialize a map to hold the counts of each item *)
    let counts = Hashtbl.create 0 in
    (* Iterate over the input list and update the counts map *)
    List.iter (fun x -> let count = try Hashtbl.find counts x with Not_found -> 0 in
                       Hashtbl.replace counts x (count + 1)) nums;
    (* Iterate over the counts map and find the key with the maximum count *)
    Hashtbl.iter (fun x count -> if count > !max_occurrence then max_occurrence := count) counts;
    max_occurrence

