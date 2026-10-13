
let rec perimeter_pentagon (a : int) : int =
    let b = [ a * 2 * 2 * 2; a * 3 * 2 * 2; a * a * 2 * 2; a * a * a * 2; a * a * a * 3 ] in
    let vs = Buffer.create 5 in
    for i = 0 to 4 do
        Buffer.add_int32_le vs (Int32.of_int (List.nth b i))
    done;
    Buffer.contents vs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the perimeter of a regular pentagon from the length of its sides. *)
