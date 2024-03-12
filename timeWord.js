function timeToWords(time) {
    const hours = [
        'midnight', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'one'
    ];
    const minutes = [
        'oh', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one', 'twenty two', 'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine'
    ];

    const [hour, minute] = time.split(':').map(num => parseInt(num));

    let hourWord = hours[hour % 12];
    let minuteWord = '';
    if (minute === 0) {
        if (hour === 0) {
            return 'midnight';
        } else if (hour === 12) {
            return 'noon';
        }
        return `${hourWord} o'clock ${hour < 12 ? 'am' : 'pm'}`;
    } else if (minute <= 9) {
        minuteWord = minutes[minute];
    } else if (minute <= 19) {
        minuteWord = minutes[minute];
    } else if (minute <= 29) {
        minuteWord = `twenty ${minutes[minute % 20]}`;
    } else {
        hourWord = hours[(hour + 1) % 12];
        minuteWord = `twenty ${minutes[60 - minute]}`;
    }

    return `${hourWord} ${minuteWord} ${minute < 10 ? 'oh' : ''} ${hour < 12 ? 'am' : 'pm'}`;
};

// Tests for specified cases
const tests = [
    { input: '00:00', expected: 'midnight' },
    { input: '00:12', expected: 'twelve twelve am' },
    { input: '01:00', expected: 'one o\'clock am' },
    { input: '06:01', expected: 'six oh one am' },
    { input: '06:10', expected: 'six ten am' },
    { input: '06:18', expected: 'six eighteen am' },
    { input: '06:30', expected: 'six thirty am' },
    { input: '10:34', expected: 'ten thirty four am' },
    { input: '12:00', expected: 'noon' },
    { input: '12:09', expected: 'twelve oh nine pm' },
    { input: '23:23', expected: 'eleven twenty three pm' }
];

for (const test of tests) {
    const result = timeToWords(test.input);
    console.log(`Input: ${test.input}, Expected: ${test.expected}, Result: ${result}`);
    console.log(result === test.expected ? 'Test Passed\n' : 'Test Failed\n');
};